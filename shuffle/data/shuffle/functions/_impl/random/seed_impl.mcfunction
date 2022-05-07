#> shuffle:_impl/random/seed_impl
#@within function shuffle:_impl/random/seed

data modify storage shuffle: UUID set from entity @s UUID
  execute store result storage shuffle: random._ short 1 run data get storage shuffle: UUID[0]
  execute store result storage shuffle: random.carry int 1 run data get storage shuffle: UUID[3]
data remove storage shuffle: UUID
kill @s
