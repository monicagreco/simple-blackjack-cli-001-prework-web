def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  1 + rand(11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card
  card_total += deal_card
  display_card_total(card_total)
  return card_total
  # code #initial_round here
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input

  if user_input != "h" && user_input != "s"
    invalid_command
  end

  if user_input == "h"
    current_card_total += deal_card
  end




  return current_card_total


  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  user_input = get_user_input
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome

  current_card_total = initial_round()
  until current_card_total >= 21
    current_card_total = hit?(current_card_total)
    display_card_total(current_card_total)
  end
  end_game(current_card_total)
  # code runner here
end
