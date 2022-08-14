shuffle
==

## ⚠ ATTENTION

`shuffle:list/` is lower performance than `shuffle:list/legacy/` in many cases.

## Features

- O(NlogN) shuffle algorithm using [List-Mapped Trie](https://gist.github.com/intsuc/0901df9d487f7829d97491613a12d351)
- If `take` is specified, the program will abort when the specified number of elements are retrieved.

## Usage

#### function `shuffle:list/`

- Processing details
  - First, convert to List-Mapped Trie
  - Then call `shuffle:lmt/`

##### input and output

- input `storage : _[-1].list` List
- input `storage : _[-1].take` Optional\<int\>
- output `storage : _[-1].shuffled` shuffled List

##### number of command executions

- O(N) + O(NlogN)

##### sample code

```mcfunction
data modify storage : _ append value {}
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9]
  function shuffle:list/
  # sample outout
  # => {list:[],shuffled:[8,6,5,1,0,9,2,3,7,4]}
data remove storage : _[-1]
```

```mcfunction
data modify storage : _ append value {}
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9]
  data modify storage : _[-1].take set value 4
  function shuffle:list/
  # sample outout
  # => {list:[],shuffled:[8,6,5,1],take:4}
data remove storage : _[-1]
```

#### function `shuffle:list/legacy/`

- This is provided for comparison with the `shuffle:list/`.

##### input and output

- input `storage : _[-1].list` List
- input `storage : _[-1].take` Optional\<int\>
- output `storage : _[-1].shuffled` shuffled List

##### number of command executions

- shuffle O(N^2)

##### sample code

```mcfunction
data modify storage : _ append value {}
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9]
  function shuffle:list/legacy/
  # sample outout
  # => {list:[],shuffled:[8,6,5,1,0,9,2,3,7,4]}
data remove storage : _[-1]
```

```mcfunction
data modify storage : _ append value {}
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9]
  data modify storage : _[-1].take set value 4
  function shuffle:list/legacy/
  # sample outout
  # => {list:[???],shuffled:[8,6,5,1],take:4}
data remove storage : _[-1]
```
#### function `shuffle:lmt/`

- This is mainly used internally, but you can also call it.

##### input and output

- input `storage : _[-1].a` `[I; int]` temporary variable
- input `storage : _[-1].lmt` List-Mapped Trie
- input `score $size _shuffle` int (size of lmt)
- input `storage : _[-1].take` Optional\<int\>
- output `storage : _[-1].shuffled` shuffled List

##### number of command executions

- shuffle O(NlogN)

##### sample code

```mcfunction
scoreboard objectives add _shuffle dummy
  data modify storage : _ append value {a: [I; 0]}
    data modify storage : _[-1].lmt set value [[[[[[[[[[[[[[[[{_:1},{_:2}],[{_:3},{_:4}]],[[{_:5},{_:6}],[{_:7},{_:8}]]],[[[{_:9},{_:10}],[]],[]]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]]
    scoreboard players set $size _shuffle 10
    function shuffle:lmt/
    # sample outout
    # => {lmt:[[[[[[[[[[[[[[[[{_:4},{_:3}],[{_:6},{_:9}]],[[{_:5},{_:8}],[{_:2},{_:10}]]],[[[{_:7},{_:1}],[]],[]]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],shuffled:[1,7,10,2,8,5,9,6,3,4],tmp:4}
  data remove storage : _[-1]
scoreboard objectives remove _shuffle
```

```mcfunction
scoreboard objectives add _shuffle dummy
  data modify storage : _ append value {a: [I; 0]}
    data modify storage : _[-1].lmt set value [[[[[[[[[[[[[[[[{_:1},{_:2}],[{_:3},{_:4}]],[[{_:5},{_:6}],[{_:7},{_:8}]]],[[[{_:9},{_:10}],[]],[]]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]]
    scoreboard players set $size _shuffle 10
    data modify storage : _[-1].take set value 4
    function shuffle:lmt/
    # sample outout
    # => {lmt:[[[[[[[[[[[[[[[[{_:8},{_:2}],[{_:7},{_:9}],[]],[[{_:10},{_:6}],[{_:3},{_:1}],[]]],[[[{_:4},{_:5}],[]],[]]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],[]],shuffled:[5,4,1,3],take:4,tmp:7}
  data remove storage : _[-1]
scoreboard objectives remove _shuffle
```

#### function `shuffle:integer_sequence/`

- shuffle integer sequence
- This is different from `shuffle:list/` in that there is no conversion process, instead it shuffles while building the List-Mapped Trie.

##### input and output

- input `storage : _[-1].begin` int (inclusive)
- input `storage : _[-1].end` int (exclusive)
- input `storage : _[-1].take` Optional\<int\>
- output `storage : _[-1].shuffled` shuffled List

##### number of command executions

- O(NlogN)

##### sample code

```mcfunction
data modify storage : _ append value {begin: 0, end: 10}
  function shuffle:integer_sequence/
  # sample outout
  # => {begin:0,end:10,shuffled:[4,8,1,3,6,2,0,5,9,7]}
data remove storage : _[-1]
```

```mcfunction
data modify storage : _ append value {begin: 0, end: 10, take: 4}
  function shuffle:integer_sequence/
  # sample outout
  # => {begin:0,end:10,shuffled:[4,8,1,3],take:4}
data remove storage : _[-1]
```

## Requirement

- Minecraft JE 1.19

## Installation

## License
Creative Commons Zero v1.0 Universal
