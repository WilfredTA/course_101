cards = { "Ace" => [Spaces, Clubs, Hearts, Diamonds], 
          "Two" => [Spaces, Clubs, Hearts, Diamonds], 
          "Three" => [Spaces, Clubs, Hearts, Diamonds],
          "Four" => [Spaces, Clubs, Hearts, Diamonds],
          "Five" => [Spaces, Clubs, Hearts, Diamonds],
          "Six" => [Spaces, Clubs, Hearts, Diamonds],
          "Seven" => [Spaces, Clubs, Hearts, Diamonds],
          "Eight" => [Spaces, Clubs, Hearts, Diamonds],
          "Nine" => [Spaces, Clubs, Hearts, Diamonds],
          "Ten" => [Spaces, Clubs, Hearts, Diamonds],
          "Jack" => [Spaces, Clubs, Hearts, Diamonds],
          "Queen" => [Spaces, Clubs, Hearts, Diamonds],
          "King" => [Spaces, Clubs, Hearts, Diamonds] }


def compare_hands(crds)
  # Returns winning hand
  
end

def show_winner(hand1, hand2)
  # Shows the winner based on compare hands
  # If bust?(player), computer wins
  # If bust?(computer), player wins
end

def card_deal(crds)
  # Mutate an empty array, adding two random cards
  # If array not empty, add one new card to array
end

def hit(crds)
  # Adds another card to hand
end

def bust(crds)
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
    elsif card.to_i > 0
      total += card.to_i 
    else 
      total += 10
    end
  end

  # Correct for aces if adding 11 makes total > 21
  # Count how many aces
  # For each ace that makes total > 21, subtract 10 

  crds.select{ |card| card == "Ace"}.count.times do 
    total -= 10 if total > 21
  end

  total
end



loop do # main game loop
  player_hand = []
  computer_hand = []

  puts "Welcome to 21! The rules of the game are simple: Get as close to 21 as possible
        without going over..." 
        gets
        system 'clear'
        puts " You will play against the computer. You will be able to see one of its cards but not both..."
        gets 
        system 'clear'
        puts " When you have your hand, you can either hit or stay. If you hit, you get anothe card. You can hit 
                as many times as you wish, but if you exceed 21, then you automatically bust. If you bust, the computer wins."
        puts "Press enter to begin the game..."
        gets
        system 'clear'

  answer = ''
  loop do # Player turn
    player_deal(cards)
    computer_deal(cards)
    puts "Your hand is #{player_hand}"
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
    computer_deal(cards)
  end

  if bust?(computer_hand)
    puts "Computer busted!"
    break
  else 
    puts "Computer chose to stay!"
  end
end

show_winner(computer_hand, player_hand)

