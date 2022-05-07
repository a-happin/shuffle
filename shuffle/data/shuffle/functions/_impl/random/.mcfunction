#> shuffle:_impl/random/
#@within * shuffle:**
#@input
#  objective _shuffle
#  storage shuffle: random._ short
#  storage shuffle: random.carry int
#@output score $random _shuffle (-32768 <= $random < 32768)

## キャリー付き乗算乱数
## lag-1 MWC
## xₙ₊₁ = (mxₙ + cₙ) % b
## cₙ₊₁ = (mxₙ + cₙ) / b
## ※m,bは定数 m = 31743, b = 65536

#>
#@within * shuffle:**
  #declare score_holder $random

#>
#@within function shuffle:_impl/random/**
  #declare storage shuffle:

#>
#@private
  #declare score_holder $

execute store result score $random _shuffle run data get storage shuffle: random._ 31743
execute store result score $ _shuffle run data get storage shuffle: random.carry
execute store result storage shuffle: random._ short 1 store result storage shuffle: random.carry int 0.0000152587890625 run scoreboard players operation $random _shuffle += $ _shuffle
execute store result score $random _shuffle run data get storage shuffle: random._
