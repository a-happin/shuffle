#> shuffle:_impl/random/summon
#@within function shuffle:_impl/random/

#>
#@private
#declare tag _shuffle.random 乱数取得用temoprary tag

summon marker ~ ~ ~ {Tags:[_shuffle.random]}
execute as @e[tag=_shuffle.random,distance=..0.01] run function shuffle:_impl/random/summon_then
