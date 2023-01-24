class Game
  attr_reader :winner

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player_2
    @winner = nil
  end

  def next_player
    if @current_player == @player_1
      @current_player = @player_2
    else
      @current_player = @player_1
    end
  end

  def next_turn
    @question = Question.new
    puts "#{@current_player.name}: #{@question.ask}"
    @answer = gets.chomp.to_i
    if @answer == @question.answer
      puts "#{@current_player.name}: YES! You are correct."
    else
      puts "#{@current_player.name}: Seriously? No!"
      @current_player.lose_life
    end
  end

  def check_for_winner
    puts "#{@player_1.name}: #{@player_1.lives_left}/3 vs #{@player_2.name} #{@player_2.lives_left}/3"
    if @player_1.lives_left == 0
      @winner = @player_2
    elsif @player_2.lives_left == 0
      @winner = @player_1
    else
      puts "----- NEW TURN -----"
    end
  end

  def declare_winner
    puts "#{@winner.name} wins with a score of #{@winner.lives_left}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end