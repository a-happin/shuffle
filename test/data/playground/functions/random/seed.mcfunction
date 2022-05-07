#> playground:random/seed
#@within function playground:random/

#>
#@private
#declare tag _random.seed 乱数取得用temoprary tag

summon marker ~ ~ ~ {Tags:["_random.seed"]}
execute as @e[type=marker,tag=_random.seed,distance=..0.01] run function playground:random/seed_impl
