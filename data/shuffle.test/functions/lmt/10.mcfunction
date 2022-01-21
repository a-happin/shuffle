#> shuffle.test:lmt/10
#@private

data modify storage : _ append value {}
  data modify storage : _[-1].lmt set value {data:[[[[[[[[[[[[[[[[{_:1},{_:2}],[{_:3},{_:4}]],[[{_:5},{_:6}],[{_:7},{_:8}]]],[[[{_:9},{_:10}],[]],[]]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]], size: 10}
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:lmt/
  tellraw @s [{"text": "Debug» ", "color": "green"}, {"storage": ":", "nbt": "_[-1]"}]
data remove storage : _[-1]
