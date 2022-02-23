#> shuffle:_impl/lmt/construct/iota/error
#@within function shuffle:_impl/lmt/construct/iota/

execute unless score $size _shuffle matches 0.. run tellraw @s [{"text": "Error» ", "color": "red"}, "shuffle:_impl/lmt/construct/iota/» ", "must be begin <= end"]
execute unless score $size _shuffle matches ..65536 run tellraw @s [{"text": "Error» ", "color": "red"}, "shuffle:_impl/lmt/construct/iota/» ", "size is too big"]
