#> shuffle.test:random
#@private


#>
#@private
  #declare storage shuffle:
  #declare score_holder $random
  #declare score_holder $random.carry
  #declare score_holder #2^16
  #declare function shuffle:_impl/random/
  scoreboard objectives add _shuffle dummy

  scoreboard players set #2^16 _shuffle 65536
  execute store result score $random.carry _shuffle run data get storage shuffle: random[3]
  function shuffle:_impl/random/
  tellraw @s ["$random = ", {"score": {"name": "$random", "objective": "_shuffle"}}]
  tellraw @s ["$random.carry = ", {"score": {"name": "$random.carry", "objective": "_shuffle"}}]

scoreboard objectives remove _shuffle
