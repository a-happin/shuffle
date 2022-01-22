#> shuffle:_impl/lmt/at/
#@within
#  function shuffle:**
#@input
#  storage : _[-1].lmt List-Mapped Trie
#  score
#    $index _shuffle (0 <= index < 65536)
#    $prev_index _shuffle (optional) (index != prev_index)
#@output
#  storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2].\_
#  score $prev_index _shuffle

execute unless score $index _shuffle = $prev_index _shuffle run function shuffle:_impl/lmt/at/impl
