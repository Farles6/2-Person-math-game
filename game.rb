class Game
attr_reader :player1, :player2
  def initialize
    @player1 = Player.new('player 1')
    @player2 = Player.new('player 2')
    @turn1 = Turn.new(@player1, @player2, self)
    @turn1.play
  end

def new_turn?(current, inactive)
  if current.lives == 0
    puts "#{inactive.name} wins with a score of #{inactive.lives}/3"
    puts "----------GAME OVER--------"
    puts "Good bye!"
    exit(0)
   else
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    next_turn = Turn.new(inactive, current, self)
    next_turn.play
   end
  end
end
