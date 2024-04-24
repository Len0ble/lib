# Définition de la classe Game
class Game
  def initialize
    @position = 0
    @turns = 0
  end

  def play
    until @position == 10
      roll_dice
      show_position
    end
    puts "Félicitations ! Tu as atteint la 10ème marche en #{@turns} tours ! 🎉"
  end

  def roll_dice
    dice_roll = rand(1..6)
    case dice_roll
    when 5, 6
      @position += 1
      @turns += 1
    when 1
      @position -= 1 if @position > 0
      @turns += 1
    else
      @turns += 1
    end
  end

  def show_position
    puts "Tu es maintenant sur la marche #{@position}."
  end
end

# Méthode pour simuler le jeu et retourner le nombre moyen de tours pour atteindre la 10ème marche
def average_finish_time
  total_turns = 0
  number_of_games = 100

  number_of_games.times do
    game = Game.new
    game.play
    total_turns += game.instance_variable_get(:@turns)
  end

  average_turns = total_turns.to_f / number_of_games
  puts "Nombre moyen de tours pour atteindre la 10ème marche sur #{number_of_games} parties : #{average_turns}"
end

# Appel de la méthode pour afficher le résultat moyen
average_finish_time

