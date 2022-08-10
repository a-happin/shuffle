#> shuffle:_impl/random/
#@within * shuffle:**
#@input
#  objective _shuffle
#  storage shuffle: random [I; int, int]
#@output score $random _shuffle (-32768 <= $random < 32768)

## キャリー付き乗算乱数
## lag-1 MWC
## xₙ₊₁ = (mxₙ + cₙ) % b
## cₙ₊₁ = (mxₙ + cₙ) / b
## ※m,bは定数 m = 31743, b = 65536

execute store result score $random _shuffle run data get storage shuffle: random[0]
execute store result score $ _shuffle run data get storage shuffle: random[1]
execute store result storage shuffle: random[0] short 1 store result storage shuffle: random[1] int 0.0000152587890625 run scoreboard players operation $random _shuffle += $ _shuffle
execute store result storage shuffle: random[0] long 31743 store result score $random _shuffle run data get storage shuffle: random[0]
