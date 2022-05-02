class Turn

  def initialize(current, inactive, game)
    @n1 = rand(1..20)
    @n2 = rand(1..20)
    @answer = @n1 + @n2
    @current_player = current
    @inactive_player = inactive
    @game = game
  end
  
  def play
    puts "-------New Turn--------"
  puts "#{@current_player.name}: What does #{@n1} + #{@n2} equal?"
  
  print '> '
  choice = $stdin.gets.chomp
  
  if choice.to_i == @answer
    puts "#{@current_player.name}: YES! You are correct"
  else
    puts "#{@current_player.name}: Seriously? No!"
    @current_player.life_down
   end
   @game.new_turn?(@current_player, @inactive_player)
   end
  end
  