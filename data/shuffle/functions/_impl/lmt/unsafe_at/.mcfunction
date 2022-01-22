#> shuffle:_impl/lmt/unsafe_at/
# lmt[index]が存在することが保証できる場合、こちらを使うことでコマンド数の削減が可能
#@within
#  function shuffle:**
#@input
#  storage : _[-1].lmt List-Mapped Trie
#  score
#    $index _shuffle (0 <= index < lmt.size)
#    $prev_index _shuffle (optional) (index != prev_index)
#@output
#  storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2].\_
#  score $prev_index _shuffle

execute unless score $index _shuffle = $prev_index _shuffle run function shuffle:_impl/lmt/unsafe_at/impl
