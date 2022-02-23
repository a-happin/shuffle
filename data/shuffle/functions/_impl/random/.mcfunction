#> shuffle:_impl/random/
#@within * shuffle:**
#@output score $random _shuffle

# requires:
#  score #2^16 _shuffle = 65536

## キャリー付き乗算乱数
## lag-1 MWC
## xₙ₊₁ = (mxₙ + cₙ) % b
## cₙ₊₁ = (mxₙ + cₙ) / b
## ※m,bは定数 m = 31743, b = 65536

execute store result score $random _shuffle run data get storage shuffle: random[0] 31743
execute store result score $carry _shuffle run data get storage shuffle: random[3]
execute store result score $carry _shuffle run scoreboard players operation $random _shuffle += $carry _shuffle
execute store result storage shuffle: random[3] int 1 run scoreboard players operation $carry _shuffle /= #2^16 _shuffle
execute store result storage shuffle: random[0] int 1 run scoreboard players operation $random _shuffle %= #2^16 _shuffle
