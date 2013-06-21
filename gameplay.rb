require './gameboard'
no_of_guesses = 0
gb = GameBoard.new
random_no = rand(1..7)
locations = [random_no, random_no + 1, random_no + 2]
gb.set_locations_cells(locations)
is_alive = true
while is_alive
  puts 'Enter a guess between 1 and 10: '
  STDOUT.flush
  user_guess = gets.chomp
  result = gb.check_yourself(user_guess)
  no_of_guesses += 1
  if (result == 'kill')
    is_alive = false
    print "You have sunk the cruiser! It took you #{no_of_guesses} guesses. "
    if no_of_guesses > 10
      puts "If I were you I wouldn't take command of anything anytime soon."
    elsif no_of_guesses > 3
      puts "Not bad."
    else
      puts "Very impressive! Do you mind if I ask where did you do your naval stragy undergrad?"
    end
  end
end
