#> shuffle:integer_sequence/loop
#@within tag/function shuffle:integer_sequence/loop

## index = random %= size
execute store result score $index _shuffle run scoreboard players operation $random _shuffle %= $size _shuffle

## lmt[index] ??= random + begin
execute unless score $index _shuffle = $prev_index _shuffle run function shuffle:_impl/lmt/at/index/impl
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ store result storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ int 1 run scoreboard players operation $random _shuffle += $begin _shuffle

## shuffled.append (lmt[index])
data modify storage : _[-2].shuffled append from storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._

## --size
scoreboard players remove $size _shuffle 1

## swap (lmt[index], lmt[size])
execute unless score $index _shuffle = $size _shuffle run function #shuffle:integer_sequence/swap_with_last

## do-while (rest < size && size >= 2)
execute if score $rest _shuffle < $size _shuffle if score $size _shuffle matches 2.. run function #shuffle:integer_sequence/loop
