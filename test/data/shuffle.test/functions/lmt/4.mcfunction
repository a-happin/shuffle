#> shuffle.test:lmt/4
#@private

#>
#@private
  scoreboard objectives add _shuffle dummy
  #declare score_holder $size
data modify storage : _ append value {}
  data modify storage : _[-1].lmt set value [[[[[[[[[[[[[[[[{_: "hello"}, {_: "world"}],[{_: "I"}, {_: "am"}]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]]
  execute store result score $size _shuffle if data storage : _[-1].lmt[][][][][][][][][][][][][][][][]._
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:lmt/
  tellraw @s [{"text": "Debug» ", "color": "green"}, {"storage": ":", "nbt": "_[-1]"}]
data remove storage : _[-1]
scoreboard objectives remove _shuffle
