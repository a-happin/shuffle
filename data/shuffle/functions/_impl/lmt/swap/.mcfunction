#> shuffle:_impl/lmt/swap/
# 0-indexedでswap_i番目とswap_j番目の要素を交換します
#@within function shuffle:**
#@input
#  storage : _[-1].lmt List-Mapped Trie
#  score $swap_i _shuffle
#  score $swap_j _shuffle
#@deprecated 効率が悪い

execute unless score $swap_i _shuffle = $swap_j _shuffle run function shuffle:_impl/lmt/swap/impl
