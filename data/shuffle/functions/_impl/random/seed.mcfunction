#> shuffle:_impl/random/seed
#@within function shuffle:_impl/random/

#>
#@private
#declare tag _shuffle.random.seed 乱数取得用temoprary tag

summon marker ~ ~ ~ {Tags:["_shuffle.random.seed"]}
execute as @e[tag=_shuffle.random.seed,distance=..0.01] run function shuffle:_impl/random/seed_impl
