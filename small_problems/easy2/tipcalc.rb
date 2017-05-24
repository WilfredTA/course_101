#Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
#The program must compute the tip and then display both the tip and the total amount of the bill.

def tip(percentage, bill)
    percentage/100 * bill
end

puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage"
percentage = gets.to_f

puts "The tip is $#{tip(percentage, bill)}"
puts "The total is $" + (tip(percentage, bill) + bill).to_s