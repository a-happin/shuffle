#> shuffle:list/
#@public
#@input storage
#  : _[-1].list List
#  : _[-1].take Optional int
#@output storage : _[-1].shuffled List

#>
#@private
scoreboard objectives add _shuffle dummy
  data modify storage : _ append value {a: [I; 0]}
    function shuffle:_impl/lmt/construct/from_list/
    data modify storage : _[-1].take set from storage : _[-2].take
    function shuffle:lmt/
    data modify storage : _[-2].shuffled set from storage : _[-1].shuffled
  data remove storage : _[-1]
scoreboard objectives remove _shuffle
