#> shuffle:_impl/lmt/at/
#@within
#  function shuffle:**
#@input score
#  $index _shuffle
#  $prev_index _shuffle (optional)
#@output
#  storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2].\_
#  score $prev_index _shuffle

execute unless score $index _shuffle = $prev_index _shuffle run function shuffle:_impl/lmt/at/impl
