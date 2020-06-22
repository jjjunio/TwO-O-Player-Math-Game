class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def game_over
    @lives == 0
  end

  def random_question
    random_question = Questions.new
    random_question.addition_question(name)
    print "> "
    @user_input = gets.chomp
    if random_question.correct_answer?(@user_input.to_i)
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      lose_life
    end
  end

end

