VALID_CHOICES = %w(rock r paper p scissors s spock sp lizard l).freeze
VALID_CHOICES_HASH = { 'r' => 'rock', 'p' => 'paper', 's' => 'scissors', 'sp' => 'spock', 'l' => 'lizard' }.freeze
player_score = []
computer_score = []

def prompt(message)
  puts " => #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'lizard' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt('Its a tie!')
  end
end

# Increases the length of either score array by 1 each iteration
def score_counter(player, computer, score1, score2)
  if win?(player, computer)
    score1 << 1
  elsif win?(computer, player)
    score2 << 1
  end
end

prompt('Welcome to rock paper scissors, star trek version.')
prompt('You will play against the computer.
To win the game, you must win 5 rounds before the computer does.')
prompt('Press enter when you are ready to play.')
gets

  
Gem.win_platform? ? (system 'cls') : (system 'clear') # Found on stackoverflow
choice = ' '
computer_choice = ' '
answer = ' '

loop do
  loop do
    prompt('Choose one of the following')
    VALID_CHOICES_HASH.each do |key, value|
      prompt("Choose #{key} for #{value}")
    end
    choice = gets.chomp

  break if VALID_CHOICES.include?(choice)

    prompt('That is not a valid choice.')
  end

  answer = VALID_CHOICES_HASH.fetch(choice)

  computer_choice = %w(rock paper scissors lizard spock).sample
  prompt("You chose: #{answer}; computer chose: #{computer_choice}")

  display_results(answer, computer_choice)

  if win?(answer, computer_choice)
    player_score << 1
  elsif win?(computer_choice, answer)
    computer_score << 1
  end

break if player_score.length == 5 || computer_score.length == 5
  prompt('Do you want to play again? (y/n)')
  reply = gets.chomp
break unless reply.downcase.start_with?('y')
end

prompt("You won #{player_score.length} times and the computer won
#{computer_score.length} times")
prompt('Thank you for playing. Good bye.')
