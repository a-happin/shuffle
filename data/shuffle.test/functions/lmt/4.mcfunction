#> shuffle.test:lmt/4
#@private

data modify storage : _ append value {}
  data modify storage : _[-1].lmt set value {data:[[[[[[[[[[[[[[[[{_: "hello"}, {_: "world"}],[{_: "I"}, {_: "am"}]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]], size: 4}
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:lmt/
  tellraw @s [{"text": "Debug» ", "color": "green"}, {"storage": ":", "nbt": "_[-1]"}]
data remove storage : _[-1]
