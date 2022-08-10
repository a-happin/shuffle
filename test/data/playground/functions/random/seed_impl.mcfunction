#> playground:random/seed_impl
#@within function playground:random/seed

data modify storage random: UUID set from entity @s UUID
  data modify storage random: _ set value [I; 0, 0]
  execute store result storage random: _[0] long 31743 run data get storage random: UUID[0]
  execute store result storage random: _[1] int 1 run data get storage random: UUID[3]
data remove storage random: UUID
kill @s
