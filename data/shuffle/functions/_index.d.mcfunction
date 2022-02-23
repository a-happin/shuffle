#> shuffle:_index.d
#@private

#>
#@within function shuffle:**
  #declare storage shuffle:

#>
#@public
  #declare storage :

#> objective _shuffleが存在する前提でよい
#@within function shuffle:_impl/**
#declare objective _shuffle

#>
#@within function shuffle:**
  #declare score_holder #2^16
  #declare score_holder #2^17
  #declare score_holder $size
  #declare score_holder $take
  #declare score_holder $index
  #declare score_holder $prev_index
  #declare score_holder $swap_i
  #declare score_holder $swap_j
  #declare score_holder $swap_with
  #declare score_holder $random

#>
#@within function shuffle:_impl/lmt/at/**

#>
#@within
#  function shuffle:_impl/lmt/at/**
#  function shuffle:_impl/lmt/unsafe_at/**
#declare score_holder $

#>
#@within function shuffle:_impl/random/**
  #declare score_holder $carry

#>
#@within function shuffle:integer_sequence/**
  #declare score_holder $begin
  #declare score_holder $end
  #declare score_holder $last
