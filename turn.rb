class Turn

  def initialize()
    @player1 = 'player1' 
    @player2 = 'player2' 
    @n1 = rand(1..20)
    @n2 = rand(1..20)
    @answer = n1 + n2
    @current_player = player1
    @inactive_player = player2
  end
  
  def new_turn
  puts "#{current_player}: What does #{n1} + #{n2} equal?"
  
  print '> '
  choice = $stdin.gets.chomp
  
  if choice.to_i == answer
    puts "#{current_player}: YES! You are correct"
  else
    puts "#{current_player}: Seriously? No!"
    current_player.life_down
   end
  
   if current_player.lives == 0
      puts "#{inactive_player} wins with a score of #{inactive_player.lives}/3"
      puts "----------GAME OVER--------"
      puts "Good bye!"
      exit(0)
   else
    puts "P1: #{current_player.lives}/3 vs P2: #{inactive_player.lives}"
    puts "-------New Turn--------"
    current_player, inactive_player = inactive_player, current_player 
    new_turn()
   end
   end
  end
  
  
    
  =begin
  def new_turn # game.rb?
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}"
      puts "-------New Turn--------"
    end
  end
  =end