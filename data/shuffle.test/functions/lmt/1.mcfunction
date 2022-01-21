#> shuffle.test:lmt/1
#@private

data modify storage : _ append value {}
  data modify storage : _[-1].lmt set value {data:[[[[[[[[[[[[[[[[{_: "hello"},{}],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]], size: 1}
  tellraw @s [{"text": "Debug» ", "color": "green"}, "lmt = ", {"storage": ":", "nbt": "_[-1].lmt"}]
  function shuffle:lmt/
  data modify storage : _[-1].expected set value ["hello"]
  execute store result storage : _[-1].test.failure byte 1 run data modify storage : _[-1].expected set from storage : _[-1].shuffled
  execute unless data storage : _[-1].test{failure: true} run tellraw @s [{"text": "Debug» ", "color": "green"}, "OK"]
  execute if data storage : _[-1].test{failure: true} run tellraw @s [{"text": "Failed» ", "color": "red"}, "shuffled = ", {"storage": ":", "nbt": "_[-1].shuffled"}]
data remove storage : _[-1]
