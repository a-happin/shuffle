#> shuffle:lmt/loop
#@within
#  function shuffle:lmt/
#  function shuffle:lmt/loop

function shuffle:_impl/random/

## swap_i = index = random %= size
execute store result score $swap_i _shuffle store result score $index _shuffle run scoreboard players operation $random _shuffle %= $size _shuffle

## shuffled.append (lmt[index])
function shuffle:_impl/lmt/at/
data modify storage : _[-1].shuffled append from storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._

## swap_j = --size
execute store result score $swap_j _shuffle run scoreboard players remove $size _shuffle 1

## lmt.swap (swap_i, swap_j)
function shuffle:_impl/lmt/swap/

## do-while (--take >= 1 && size >= 2)
scoreboard players remove $take _shuffle 1
execute if score $take _shuffle matches 1.. if score $size _shuffle matches 2.. run function shuffle:lmt/loop
