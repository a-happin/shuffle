#> shuffle:_impl/random/
#@within function shuffle:**
#@output score $random _shuffle

## UUID cache式で乱数を生成します

execute unless data storage shuffle: random[-1] run function shuffle:_impl/random/summon
execute store result score $random _shuffle run data get storage shuffle: random[-1]
data remove storage shuffle: random[-1]
