#> shuffle.test:lmt/1
#@private

#>
#@private
  scoreboard objectives add _shuffle dummy
  #declare score_holder $size
data modify storage : _ append value {}
  data modify storage : _[-1].lmt set value [[[[[[[[[[[[[[[[{_: "hello"},{}],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]]
  execute store result score $size _shuffle if data storage : _[-1].lmt[][][][][][][][][][][][][][][][]._
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:lmt/
  data modify storage : _[-1].expected set value ["hello"]
  execute store result storage : _[-1].test.failure byte 1 run data modify storage : _[-1].expected set from storage : _[-1].shuffled
  execute unless data storage : _[-1].test{failure: true} run tellraw @s [{"text": "Debug» ", "color": "green"}, "OK"]
  execute if data storage : _[-1].test{failure: true} run tellraw @s [{"text": "Failed» ", "color": "red"}, "shuffled = ", {"storage": ":", "nbt": "_[-1].shuffled"}]
data remove storage : _[-1]
scoreboard objectives remove _shuffle
