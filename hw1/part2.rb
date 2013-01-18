class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_tournament_winner(a)
  if game? a
    rps_game_winner a
  else
    winner = nil
    a.each do |c|
      if winner.nil?
        winner = rps_tournament_winner c
      else
        winner = rps_game_winner [ winner, rps_tournament_winner(c) ]
      end
    end
    winner
  end
end

def game?(a)
  a[0][0].is_a? String rescue false
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each do |player|
    raise NoSuchStrategyError unless player[1].match(/^[rps]/i)
  end

  action1 = game[0][1].downcase
  action2 = game[1][1].downcase

  if action1 == 'r' && action2 == 'r'
    game[0]
  elsif action1 == 'r' && action2 == 'p'
    game[1]
  elsif action1 == 'r' && action2 == 's'
    game[0]
  elsif action1 == 'p' && action2 == 'r'
    game[0]
  elsif action1 == 'p' && action2 == 'p'
    game[0]
  elsif action1 == 'p' && action2 == 's'
    game[1]
  elsif action1 == 's' && action2 == 'r'
    game[1]
  elsif action1 == 's' && action2 == 'p'
    game[0]
  elsif action1 == 's' && action2 == 's'
    game[0]
  end
end
