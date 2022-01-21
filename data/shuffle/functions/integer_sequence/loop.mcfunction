#> shuffle:integer_sequence/loop
#@within
#  function shuffle:integer_sequence/
#  function shuffle:integer_sequence/loop

function shuffle:_impl/random/

## swap_i = index = random %= size
execute store result score $swap_i _shuffle store result score $index _shuffle run scoreboard players operation $random _shuffle %= $size _shuffle

## lmt[index] ??= random + begin
function shuffle:_impl/lmt/at/
execute unless data storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ store result storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ int 1 run scoreboard players operation $random _shuffle += $begin _shuffle

## shuffled.append (lmt[index])
data modify storage : _[-2].shuffled append from storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._

## swap_j = --size
execute store result score $swap_j _shuffle run scoreboard players remove $size _shuffle 1

## lmt.swap (swap_i, swap_j)
function shuffle:_impl/lmt/swap/

## lmt[index] ??= swap_j + begin
execute unless data storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ store result storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ int 1 run scoreboard players operation $swap_j _shuffle += $begin _shuffle

## if (--take >= 2) self ()
scoreboard players remove $take _shuffle 1
execute if score $take _shuffle matches 2.. run function shuffle:integer_sequence/loop
