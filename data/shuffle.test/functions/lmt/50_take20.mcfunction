#> shuffle.test:lmt/50_take20
#@private

#>
#@private
  scoreboard objectives add _shuffle dummy
  #declare score_holder $size
data modify storage : _ append value {}
  data modify storage : _[-1].lmt set value [[[[[[[[[[[[[[[[{_:29},{_:18},{}],[{_:10},{_:17}]],[[{_:35},{_:11}],[{_:24},{_:48}]]],[[[{_:4},{_:44}],[{_:0},{_:33}]],[[{_:43},{_:39}],[{_:12},{_:16}]]]],[[[[{_:30},{_:21}],[{_:20},{_:7}]],[[{_:41},{_:31}],[{_:8},{_:32}]]],[[[{_:45},{_:38}],[{_:22},{_:47}]],[[{_:3},{_:49}],[{_:1},{_:15}]]]]],[[[[[{_:6},{_:40}],[{_:46},{_:42}]],[[{_:23},{_:14}],[{_:25},{_:9}]]],[[[{_:27},{_:36}],[{_:5},{_:19}]],[[{_:28},{_:26}],[{_:2},{_:37}]]]],[[[[{_:13},{_:34}],[]],[]],[]]]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]]
  execute store result score $size _shuffle if data storage : _[-1].lmt[][][][][][][][][][][][][][][][]._
  data modify storage : _[-1].take set value 20
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:lmt/
  tellraw @s [{"text": "Debug» ", "color": "green"}, {"storage": ":", "nbt": "_[-1]"}]
data remove storage : _[-1]
scoreboard objectives remove _shuffle
