#> shuffle.test:random
#@user


#>
#@private
  #declare storage shuffle:
  #declare function shuffle:_impl/random/
  scoreboard objectives add _shuffle dummy

  function shuffle:_impl/random/
  tellraw @s ["random = ", {"storage": "shuffle:", "nbt": "random"}]

scoreboard objectives remove _shuffle
