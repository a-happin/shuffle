#> shuffle.test:lmt/2
#@private

data modify storage : _ append value {}
  data modify storage : _[-1].lmt set value {data:[[[[[[[[[[[[[[[[{_: "hello"}, {_: "world"}],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]], size: 2}
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:lmt/
  tellraw @s [{"text": "Debug» ", "color": "green"}, {"storage": ":", "nbt": "_[-1]"}]
data remove storage : _[-1]
