#> shuffle:lmt/swap_with_last
#@within function shuffle:lmt/loop

scoreboard players operation $index _shuffle >< $size _shuffle
  ## tmp = lmt[size]
  execute unless score $index _shuffle = $prev_index _shuffle run function shuffle:_impl/lmt/unsafe_at/impl
  data modify storage : _[-1].tmp set from storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._

  ## lmt[size] = shuffled[-1]
  data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ set from storage : _[-2].shuffled[-1]
scoreboard players operation $index _shuffle >< $size _shuffle

## lmt[index] = tmp
execute unless score $index _shuffle = $prev_index _shuffle run function shuffle:_impl/lmt/unsafe_at/impl
data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ set from storage : _[-1].tmp
