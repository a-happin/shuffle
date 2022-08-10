#> playground:random/
#@within function playground:**
#@input
#  storage random: _ [I; int, int]
#@output score $random _random (-32768 <= $random < 32768)

## キャリー付き乗算乱数
## lag-1 MWC
## xₙ₊₁ = (mxₙ + cₙ) % b
## cₙ₊₁ = (mxₙ + cₙ) / b
## ※m,bは定数 m = 31743, b = 65536

#>
#@within function playground:random/**
  scoreboard objectives add _random dummy
  #declare storage random:
  #declare score_holder $
  #declare score_holder $random

  execute unless data storage random: _[1] run function playground:random/seed

  execute store result score $random _random run data get storage random: _[0]
  execute store result score $ _random run data get storage random: _[1]
  execute store result storage random: _[0] short 1 store result storage random: _[1] int 0.0000152587890625 run scoreboard players operation $random _random += $ _random
  execute store result storage random: _[0] long 31743 store result score $random _random run data get storage random: _[0]

  tellraw @s ["$random = ", {"score": {"name": "$random", "objective": "_random"}}]

scoreboard objectives remove _random
