def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  ele = rand(1..11)
  return ele
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  total_cards = first_card + second_card
  display_card_total(total_cards)
  return total_cards
end

def hit?(num)
  # code hit? here
  prompt_user
  user_inpt = get_user_input
  if user_inpt == "h"
    num += deal_card
  elsif user_inpt == "s"
    num
  else
    invalid_command
   prompt_user
   get_user_input
  end

end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome  
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
    puts "Sorry, you hit #{total}. Thanks for playing!"
  end
#  end_game(total)
end
    





