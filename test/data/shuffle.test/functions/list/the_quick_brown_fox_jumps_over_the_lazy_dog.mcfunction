#> shuffle.test:list/the_quick_brown_fox_jumps_over_the_lazy_dog
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list/the_quick_brown_fox_jumps_over_the_lazy_dog"
  data modify storage : _[-1].list set value ['The', 'quick', 'brown', 'fox', 'jumps', 'over', 'the', 'lazy', 'dog']
  data modify storage : _[-1].expected set value [fox,over,brown,jumps,dog,The,quick,lazy,the]
  function shuffle.test:_impl/list
data remove storage : _[-1]
