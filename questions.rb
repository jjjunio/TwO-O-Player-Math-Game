class Questions
  attr_accessor :answer, :question

  def initialize
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @sum = @first_number + @second_number
  end

  def addition_question(name)
    puts "#{name}: What does #{@first_number} plus #{@second_number} equal?"
  end

  def correct_answer?(answer)
    @sum == answer
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