class WrongNumberOfPlayerError < StandardError; end
class NoSuchStrategyError < StandardError; end

def rps_game_winner(game)
  raise WrongNumberOfPlayerError unless game.length == 2

  player1 = game[0][1].downcase  #get the r, p, s
  player2 = game[1][1].downcase  #get the r, p, s

  if player1 == "p" && player2 == "s"
    return game[1]
  elsif player1 == "s" && player2 == "p"
    return game[0]
  elsif player1 == "p" && player2 =="r"
    return game[0]
  elsif player1 == "r" && player2 == "p"
    return game[1]
  elsif player1 == "r" && player2 == "s"
    return game[0]
  elsif player1 == "s" && player2 == "r"
    return game[1]
  else
    NoSuchStrategyError
  end

end

    arr = [ [ "Armando", "P" ], [ "Dave", "S" ] ]
puts rps_game_winner(arr).to_s