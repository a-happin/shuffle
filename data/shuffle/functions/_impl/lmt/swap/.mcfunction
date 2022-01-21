#> shuffle:_impl/lmt/swap/
#@within function shuffle:**
#@input
#  storage : _[-1].lmt List-Mapped Trie
#  score $swap_i _shuffle
#  score $swap_j _shuffle

execute unless score $swap_i _shuffle = $swap_j _shuffle run function shuffle:_impl/lmt/swap/impl
