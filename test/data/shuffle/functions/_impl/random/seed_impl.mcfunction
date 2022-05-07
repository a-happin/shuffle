#> shuffle:_impl/random/seed_impl
#@within function shuffle:_impl/random/seed

data modify storage shuffle: random set from entity @s UUID
execute store result storage shuffle: random[0] int 0.0000152587890625 run data get storage shuffle: random[0]
kill @s
