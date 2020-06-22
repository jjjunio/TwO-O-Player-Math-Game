class Game 
  def initialize(name)
    @name = name
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start_game
    puts "New Game Started!"
    puts "Welcome #{@player1.name} and #{@player2.name}!"
    game_flow
  end
  
  def show_scores
    # P1: 2/3 vs P2: 3/3
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def declare_winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit true
  end

  def check_scores
    if @player1.game_over
      declare_winner @player2
    elsif @player2.game_over
      declare_winner @player1
    end
  end

  def game_flow
    @player1.random_question
    check_scores
    show_scores
    @player2.random_question
    check_scores
    show_scores
    check_scores
    puts "----- NEW TURN -----"    
    game_flow
  end
end

=begin
Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously? No!
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
... some time later ...
Player 1 wins with a score of 1/3
----- GAME OVER -----
Good bye!
=end

