#> playground:random/seed_impl
#@within function playground:random/seed

data modify storage random: UUID set from entity @s UUID
  execute store result storage random: _ short 1 run data get storage random: UUID[0]
  execute store result storage random: carry int 1 run data get storage random: UUID[3]
data remove storage random: UUID
kill @s
