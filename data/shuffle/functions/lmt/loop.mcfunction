#> shuffle:lmt/loop
#@within
#  function shuffle:lmt/
#  function shuffle:lmt/loop

function shuffle:_impl/random/

## swap_i = index = random %= size
execute store result score $swap_i _shuffle store result score $index _shuffle run scoreboard players operation $random _shuffle %= $size _shuffle

## shuffled.append (lmt[index])
execute unless score $index _shuffle = $prev_index _shuffle run function shuffle:_impl/lmt/unsafe_at/impl
data modify storage : _[-1].shuffled append from storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._

## --size
scoreboard players remove $size _shuffle 1

## swap (lmt[index], lmt[size])
execute unless score $index _shuffle = $size _shuffle run function shuffle:lmt/swap_with_last

## --take
scoreboard players remove $take _shuffle 1

## do-while (take >= 1 && size >= 2)
execute if score $take _shuffle matches 1.. if score $size _shuffle matches 2.. run function shuffle:lmt/loop
