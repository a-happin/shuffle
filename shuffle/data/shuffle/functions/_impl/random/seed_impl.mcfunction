#> shuffle:_impl/random/seed_impl
#@within function shuffle:_impl/random/seed

data modify storage shuffle: UUID set from entity @s UUID
  data modify storage shuffle: random set value [I; 0, 0]
  execute store result storage shuffle: random[0] long 31743 run data get storage shuffle: UUID[0]
  execute store result storage shuffle: random[1] int 1 run data get storage shuffle: UUID[3]
data remove storage shuffle: UUID
kill @s
