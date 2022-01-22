#> shuffle:_impl/random/seed_impl
#@within function shuffle:_impl/random/seed

data modify storage shuffle: random set value [I; 0, 0]
data modify storage shuffle: random[0] set from entity @s UUID[0]
data modify storage shuffle: random[1] set from entity @s UUID[3]
kill @s
