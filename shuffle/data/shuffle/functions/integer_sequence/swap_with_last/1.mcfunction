#> shuffle:integer_sequence/swap_with_last/1
#@within tag/function shuffle:integer_sequence/swap_with_last

execute if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ run data modify storage : _[-1].tmp set from storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._

## last = size + begin
## sizeを変更したくないのでprev_indexを参照する
## prev_indexはこの後参照されることなく破棄されるのでこれが可能
## prev_indexはこういう使い方を想定していないが最適化の都合上これが効率がいい……。
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ store result storage : _[-1].tmp int 1 run scoreboard players operation $prev_index _shuffle += $begin _shuffle
