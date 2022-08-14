#> shuffle.test:_impl/list_legacy
#@within function shuffle.test:list_legacy/**
#@input storage : _[-1].name test name
#@input storage : _[-1].list List
#@input storage : _[-1].take Optional int
#@input storage : _[-1].expected List
#@input storage : _[-1].random [I; int, int]

#>
#@private
  #declare storage shuffle:

data modify storage : _ append value {}
  ## setup
  data modify storage : _[-1].random_backup set from storage shuffle: random
  data modify storage shuffle: random set from storage : _[-2].random
  data modify storage : _[-1].list set from storage : _[-2].list
  execute if data storage : _[-2].take run data modify storage : _[-1].take set from storage : _[-2].take
  data modify storage : _[-1].expected set from storage : _[-2].expected
  execute store result storage : _[-1].expected_size int 1 if data storage : _[-1].expected[]

  ## shuffle
  function shuffle:list/legacy/

  ## validate list
  execute store result storage : _[-1].if.cond byte 1 run data modify storage : _[-1].expected set from storage : _[-1].shuffled
  execute if data storage : _[-1].if{cond: 0b} run tellraw @a [{"text": "OK» ", "color": "green"}, {"storage": ":", "nbt": "_[-2].name"}]
  execute if data storage : _[-1].if{cond: 1b} run tellraw @a [{"text": "Failed» ", "color": "red"}, {"storage": ":", "nbt": "_[-2].name"}, "» ", "expected ", {"storage": ":", "nbt": "_[-2].expected"}, ", but got ", {"storage": ":", "nbt": "_[-1].shuffled"}]

  ## restore
  data modify storage shuffle: random set from storage : _[-1].random_backup
data remove storage : _[-1]
