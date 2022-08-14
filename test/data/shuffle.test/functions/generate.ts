const dirname = (path: string) => {
  const tmp = path.split ('/')
  tmp.pop ()
  return tmp.join ('/')
}

const ensureDirectory = async (directory: string) => {
  try
  {
    const stat = await Deno.stat (directory)
    if (stat.isFile)
    {
      throw new Error (`${directory} is not a directory.`)
    }
  }
  catch
  {
    await Deno.mkdir (directory, {recursive: true})
  }
}

class ResourceLocation
{
  public readonly namespace: string
  public readonly path: string
  constructor (str: string)
  {
    if (str.includes (':'))
    {
      const [namespace, path] = str.split (':')
      this.namespace = namespace
      this.path = path
    }
    else
    {
      this.namespace = ''
      this.path = str
    }
  }

  toString ()
  {
    return `${this.namespace}${this.namespace !== '' || this.path === '' ? ':' : ''}${this.path}`
  }
}

abstract class Resource extends ResourceLocation
{
  public abstract readonly category: string
  public abstract readonly folder: string
  public abstract readonly suffix: string
  abstract generateTextData (): string

  toPathString ()
  {
    return `data/${this.namespace}/${this.folder}/${this.path}${this.suffix}`
  }

  async writeTextFile (prefix: string = '.'): Promise <this>
  {
    const path = `${prefix}/${this.toPathString ()}`
    const dir = dirname (path)
    await ensureDirectory (dir)
    await Deno.writeTextFile (path, this.generateTextData ())
    return this
  }
}

class MCFunction extends Resource
{
  public readonly category = 'function'
  public readonly folder = 'functions'
  public readonly suffix = '.mcfunction'
  public IMP_DOC: string[] = []
  public body: string[] | Generator <string, void, unknown> = []

  generateTextData ()
  {
    return [
      `#> ${this}`,
      ... this.IMP_DOC,
      ``,
      ... this.body,
      ``
    ].join ('\n')
  }
}

class TagFunction extends Resource
{
  public readonly category = 'tag/function'
  public readonly folder = 'tags/functions'
  public readonly suffix = '.json'
  public values: string[] = []

  generateTextData ()
  {
    return JSON.stringify ({values: this.values}, undefined, 2)
  }
}

class Datapack
{
  private resources: Map <string, Resource> = new Map ()
  public prefix?: string

  define <T extends Resource> (resource: T, resourceMofidier: (_: T) => void)
  {
    resourceMofidier (resource)
    this.resources.set (`${resource.category} ${resource}`, resource)
  }

  async write ()
  {
    const tasks = []
    for (const resource of this.resources.values ())
    {
      tasks.push (resource.writeTextFile (this.prefix).then ((THIS) => console.log (`wrote ${THIS}`)))
    }
    await Promise.all (tasks)
  }
}

const next_random = (random: Int32Array) =>
{
  random[0] += random[1]
  random[1] = random[0] / 0x10000

  // cast to int16
  random[0] <<= 16
  random[0] >>= 16

  const res = random[0]
  random[0] *= 31743
  return res
}

const floorMod = (a: number, b: number) => (a % b + b) % b
const iota = (begin: number, size: number) => Array.from ({length: size}, (_, i) => begin + i)

const shuffle = {
  list: <T> (seed: readonly [number, number], list: T[], take: number | undefined) =>
  {
    const random = new Int32Array (seed)
    let size = list.length
    take ??= size
    const res: T[] = []
    while (-- take >= 0 && size >= 1)
    {
      const index = floorMod (next_random (random), size)
      res.push (list[index])
      list[index] = list[-- size]
    }
    return res
  },

  list_legacy: <T> (seed: readonly [number, number], list: T[], take: number | undefined) =>
  {
    const random = new Int32Array (seed)
    let size = list.length
    take ??= size
    const res: T[] = []
    while (-- take >= 0 && size >= 1)
    {
      const index = floorMod (next_random (random), size)
      res.push (list[index])
      -- size
      for (let i = index; i < size; ++ i)
      {
        list[i] = list[i + 1]
      }
    }
    return res
  },

  integer_sequence: (seed: readonly [number, number], input: readonly [number, number], take: number | undefined) =>
  {
    const list = iota (input[0], input[1] - input[0])
    return shuffle.list (seed, list, take)
  }
} as const

const datapack = new Datapack
datapack.prefix = './test'
const test_files: ResourceLocation[] = []

for (const take of [-1, 0, 1, 20, undefined, 100000])
{
  for (const i of [0, 1, 2, 4, 8, 10, 20, 30, 50, 64, 100, 128, 150, 180, 190, 200, 300, 1000, 10000])
  {
    for (const category of Object.keys (shuffle) as (keyof typeof shuffle)[])
    {
      if (category === 'list_legacy' && i >= 10000)
      {
        continue
      }
      datapack.define (new MCFunction (`shuffle.test:${category}/${i}${take === undefined ? '' : `_take${take}`}`), (THIS) => {
        test_files.push (THIS)

        const seed = [0, 3] as const
        const input = category.startsWith ('list') ? iota (0, i) : [0, i] as const
        const expected = shuffle[category] (seed, input as any, take)

        THIS.IMP_DOC = [
          `#@within function shuffle.test:`
        ]

        THIS.body = [
        `data modify storage : _ append value {random: [I; ${seed[0]}, ${seed[1]}]}`,
        `  data modify storage : _[-1].name set value "${THIS}"`,
        ... (category.startsWith ('list')
          ? [`  data modify storage : _[-1].list set value [${iota (0, i)}]`]
          : [
              `  data modify storage : _[-1].begin set value 0`,
              `  data modify storage : _[-1].end set value ${i}`
            ]
        ),
        ... (take === undefined ? [] : [`  data modify storage : _[-1].take set value ${take}`]),
        `  data modify storage : _[-1].expected set value [${expected}]`,
        `  function shuffle.test:_impl/${category}`,
        `data remove storage : _[-1]`,
        ]
      })
    }
  }
}


for (const category of ['list', 'list_legacy'] as const)
{
  datapack.define (new MCFunction (`shuffle.test:${category}/the_quick_brown_fox_jumps_over_the_lazy_dog`), (THIS) => {
    test_files.push (THIS)

    const seed = [0, 3] as const
    const input = ['The', 'quick', 'brown', 'fox', 'jumps', 'over', 'the', 'lazy', 'dog']
    const expected = shuffle[category] (seed, input, undefined)

    THIS.IMP_DOC = [
      `#@within function shuffle.test:`
    ]

    THIS.body = [
    `data modify storage : _ append value {random: [I; ${seed[0]}, ${seed[1]}]}`,
    `  data modify storage : _[-1].name set value "${THIS}"`,
    `  data modify storage : _[-1].list set value ['The', 'quick', 'brown', 'fox', 'jumps', 'over', 'the', 'lazy', 'dog']`,
    `  data modify storage : _[-1].expected set value [${expected}]`,
    `  function shuffle.test:_impl/${category}`,
    `data remove storage : _[-1]`,
    ]
  })
}

datapack.define (new MCFunction (`shuffle.test:`), (THIS) => {
  THIS.IMP_DOC = [
    `#@user`
  ]

  THIS.body = test_files.map ((x, i) => `schedule function ${x} ${i + 1}t replace`)
})

await datapack.write ()
