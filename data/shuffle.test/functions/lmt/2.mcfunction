#> shuffle.test:lmt/2
#@private

data modify storage : _ append value {}
  data modify storage : _[-1].lmt set value {data:[[[[[[[[[[[[[[[[{_: "hello"}, {_: "world"}],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]], size: 2}
  tellraw @s [{"text": "Debug» ", "color": "green"}, "lmt = ", {"storage": ":", "nbt": "_[-1].lmt"}]
  function shuffle:lmt/
  tellraw @s [{"text": "Debug» ", "color": "green"}, "shuffled = ", {"storage": ":", "nbt": "_[-1].shuffled"}]
data remove storage : _[-1]
