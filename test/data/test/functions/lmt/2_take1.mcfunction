#> test:lmt/2_take1
#@private

#>
#@private
  scoreboard objectives add _shuffle dummy
  #declare score_holder $size
data modify storage : _ append value {}
  data modify storage : _[-1].lmt set value [[[[[[[[[[[[[[[[{_: "hello"}, {_: "world"}],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]]
  execute store result score $size _shuffle if data storage : _[-1].lmt[][][][][][][][][][][][][][][][]._
  data modify storage : _[-1].take set value 1
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:lmt/
  tellraw @s [{"text": "Debug» ", "color": "green"}, {"storage": ":", "nbt": "_[-1]"}]
data remove storage : _[-1]
scoreboard objectives remove _shuffle