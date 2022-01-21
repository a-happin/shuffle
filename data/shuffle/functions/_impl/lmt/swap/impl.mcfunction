#> shuffle:_impl/lmt/swap/impl
#@within function shuffle:_impl/lmt/swap/

execute if score $index _shuffle = $swap_j _shuffle run scoreboard players operation $swap_i _shuffle >< $swap_j _shuffle

## tmp_i = move (lmt[i])
scoreboard players operation $index _shuffle = $swap_i _shuffle
function shuffle:_impl/lmt/at/
data modify storage shuffle: swap.tmp_i set from storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._

## tmp_j = move (lmt[j])
scoreboard players operation $index _shuffle = $swap_j _shuffle
function shuffle:_impl/lmt/at/
data modify storage shuffle: swap.tmp_j set from storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._

## lmt[j] = tmp_i
data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ set from storage shuffle: swap.tmp_i

## lmt[i] = tmp_j
scoreboard players operation $index _shuffle = $swap_i _shuffle
function shuffle:_impl/lmt/at/
data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ set from storage shuffle: swap.tmp_j

data remove storage shuffle: swap
