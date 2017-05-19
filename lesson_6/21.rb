cards = { "Ace" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "2" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "3" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "4" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "5" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "6" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "7" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "8" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "9" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "10" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "Jack" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "Queen" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'],
          "King" => ['Spaces', 'Clubs', 'Hearts', 'Diamonds'] }

def compare_hands(player1, player2)
  # Returns winning hand
  if 21 - total_cards(player1).abs < 21 - total_cards(player2).abs
    player1
  elsif 21 - total_cards(player2).abs < 21 - total_cards(player1).abs
    player2
  end
end

def show_hand(hand)
  hand.join(', ')
end

def show_winner(player_hand, computer_hand)
  # Shows the winner based on compare hands
  # If bust?(player), computer wins
  # If bust?(computer), player wins

  if bust?(player_hand)
    puts "Computer wins!"
  elsif bust?(computer_hand)
    puts "Player wins!"
  elsif compare_hands(computer_hand, player_hand) == player_hand
    puts "Player wins"
  elsif compare_hands(computer_hand, player_hand) == computer_hand
    puts "Computer wins!"
  else
    puts "Tie!"
  end
end

def card_deal(crds, hand)
  # Mutate an empty array, adding two random cards
  # If array not empty, add one new card to array
  if hand.empty?
    hand << crds.keys.sample
    hand << crds.keys.sample
  else
    hand << crds.keys.sample # This will occur when player chooses to hit
  end
end

def bust?(crds)
  total_cards(crds) > 21
end

def total_cards(crds)
  # Add cardname.to_i to sum
  # If card is face value, add 10
  # If card is Ace, add eleven
  # If adding 11 makes sume > 21, add 1 instead

  total = 0
  crds.each do |card|
    if card == "Ace"
      total += 11
    elsif card.to_i != 0
      total += card.to_i
    else
      total += 10
    end
  end

  # Correct for aces if adding 11 makes total > 21
  # Count how many aces
  # For each ace that makes total > 21, subtract 10

  crds.select { |card| card == "Ace" }.count.times do
    total -= 10 if total > 21
  end

  total
end

loop do # main game loop
  player_hand = []
  computer_hand = []
  loop do # one round of 21
    player_hand = []
    computer_hand = []

    puts " Welcome to 21! The rules of the game are simple: Get as close to 21 as possible"
    puts " without going over..."
    gets
    system 'clear'
    puts " You will play against the computer. You will be able to see one of its cards but not both..."
    gets
    system 'clear'
    puts " When you have your hand, you can either hit or stay. If you hit, you get another card."
    puts " You can hit as many times as you wish, but if you exceed 21, then you automatically bust."
    puts " If you bust, the computer wins."
    puts " Press enter to begin the game..."
    gets
    system 'clear'

    answer = ''
    card_deal(cards, computer_hand)
    loop do # Player turn
      card_deal(cards, player_hand)
      puts "Your hand is #{show_hand(player_hand)}"
      puts "Computer's hand is #{computer_hand[0]} and one hidden card."
      puts "Will you hit or stay? (h or s?)"
      answer = gets.chomp.downcase
      break if answer.include?('s') || bust?(player_hand)
    end

    if bust?(player_hand)
      puts "You busted!"
      break
    else
      puts "You chose to stay!"
    end

    loop do # Computer turn
      break if total_cards(computer_hand) >= 17 || bust?(computer_hand)
      card_deal(cards, computer_hand)
    end

    if bust?(computer_hand)
      puts "Computer busted!"
      break
    else
      puts "Computer chose to stay!"
    end

    break
  end

  puts "Your hand was #{show_hand(player_hand)} with a total of #{total_cards(player_hand)}"
  puts "computer's hand was #{show_hand(computer_hand)} with a total of #{total_cards(computer_hand)}"
  show_winner(player_hand, computer_hand)

  puts "Play again? (y or n)"
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

puts "Thank you for playing!"
