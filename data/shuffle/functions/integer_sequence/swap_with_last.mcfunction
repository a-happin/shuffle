#> shuffle:integer_sequence/swap_with_last
#@within function shuffle:integer_sequence/loop

## __discard = move (lmt[index])
# data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._

scoreboard players operation $index _shuffle >< $size _shuffle
  ## tmp = lmt[size] ?? last + begin
  execute unless score $index _shuffle = $prev_index _shuffle run function shuffle:_impl/lmt/at/impl
  execute if data storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ run data modify storage : _[-1].tmp set from storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._
  execute unless data storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ store result storage : _[-1].tmp int 1 run scoreboard players operation $last _shuffle += $begin _shuffle
  # data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._

  ## lmt[size] = shuffled[-1]
  # data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ set from storage : _[-2].shuffled[-1]
scoreboard players operation $index _shuffle >< $size _shuffle

## lmt[index] = tmp
execute unless score $index _shuffle = $prev_index _shuffle run function shuffle:_impl/lmt/unsafe_at/impl
data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ set from storage : _[-1].tmp
