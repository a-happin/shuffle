#> shuffle:_impl/random/summon_then
#@within function shuffle:_impl/random/summon

## UUID[1]とUUID[2]は固定のビットがあり(ほんまか?)Full-rangeの乱数が生成できないので使わない
## そもそもFull-rangeの乱数が必要なのか疑問

data modify storage shuffle: random append from entity @s UUID[0]
data modify storage shuffle: random append from entity @s UUID[3]
kill @s
