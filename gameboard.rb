class GameBoard
  def initialize(cells = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    @cells = cells
    @already_guessed = []
  end

  def set_locations_cells(args)
    @cruiser = args
  end

  def check_yourself(guess)
    guess_num = guess.to_i
    if @already_guessed.include?(guess_num)
      puts "You already guessed that cell! Wasting a guess seems to be an appropriate punishment for your stupidity."
    elsif @cells.include?(guess_num) == false
      puts "That's not even a valid number! Still counts as a guess, though."
    elsif @cruiser.include?(guess_num)
      @cruiser.delete(guess_num)
      if @cruiser.size == 0
        return 'kill'
      else
        puts "Hit!"
      end
    else
      puts "Miss"
    end
    @already_guessed << guess_num
  end
end
