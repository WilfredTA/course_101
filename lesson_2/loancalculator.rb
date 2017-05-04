def prompt(message)
  puts("=> #{message}")
end

prompt("Welcome to loan calculator.")

loop do
  loan_amount = ' '
loop do
prompt("Please enter the amount you wish to borrow")
loan_amount = gets.chomp
break if loan_amount.to_i > 0 && loan_amount.empty? == false
prompt("Error: Please enter a valid number")
end

apr = nil
loop do
  prompt("Please enter your interest rate percentage.")
  apr = gets.chomp
  break if apr.to_f > 0 && apr.empty? == false
  prompt("Error, please enter a valid number")
end

duration = nil
loop do
  prompt("Please enter the loan duration (months)")
  duration = gets.chomp
  break if duration.to_i > 0 && duration.empty? == false
  prompt("Error: Please enter a valid number")
end
  
  annual_interest = apr.to_f/100 
  monthly_interest = annual_interest/12
  
  monthly_payment = loan_amount.to_f * (monthly_interest / (1 - (1 + monthly_interest)**(-duration.to_f)))
  
  prompt("Your monthly payment is #{monthly_payment} dollars")
  
  prompt("Would you like to make another calculation? (Y/N)")
  response = gets.chomp 
  break if response.downcase != 'y'
end