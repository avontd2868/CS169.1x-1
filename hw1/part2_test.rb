require File.dirname(__FILE__) + '/part2'

#puts rps_game_winner 'a'
#puts rps_game_winner [ ["Armando", "P"], ["Dave", "S"] ]

tournament =
[
  [
    [ ["Armando", "P"], ["Dave", "S"] ],
    [ ["Armando0", "P"], ["Dave0", "S"] ],
    [ ["Richard", "R"],  ["Michael", "P"] ]
  ],
  [
    [ ["Armando1", "P"], ["Dave1", "S"] ]
  ],
  [
    [ ["Armando2", "P"], ["Dave2", "S"] ],
    [ ["Richard8", "R"],  ["Michael8", "S"] ]
  ],
  [
    [ ["Armando3", "P"], ["Dave3", "S"] ],
    [ ["Richard11", "R"],  ["Michael11", "S"] ]
  ]
]

tournament1 =
[

 ["Armando", "R"], ["Dave", "P"]

]

puts rps_tournament_winner tournament
puts rps_tournament_winner tournament1

