#> shuffle.test:random
#@private


#>
#@private
  #declare score_holder $random
  scoreboard objectives add _shuffle dummy
  #declare function shuffle:_impl/random/

  function shuffle:_impl/random/
  tellraw @s {"score": {"name": "$random", "objective": "_shuffle"}}

scoreboard objectives remove _shuffle
