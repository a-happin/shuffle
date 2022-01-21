#> shuffle:_impl/lmt/size/
#@within function shuffle:**
#@input storage : _[-1].lmt List-Mapped Trie
#@output score $size _shuffle

execute if data storage : _[-1].lmt.size store result score $size _shuffle run data get storage : _[-1].lmt.size
execute unless data storage : _[-1].lmt.size store result score $size _shuffle if data storage : _[-1].lmt.data[][][][][][][][][][][][][][][][]._
