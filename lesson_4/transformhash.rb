
	produce = {'apple' => 'Fruit', 'carrot' => 'Vegetable', 'pear' => 'Fruit', 'broccoli' => 'Vegetable'}

def select_fruit(food)
	groceries = food.keys
	counter = 0
	fruits = {}
	loop do 
		break if counter == groceries.size
		current_food = groceries[counter]
		current_category = food[current_food]
		if current_category == 'Fruit'
			fruits[current_food] = current_category
		end
		counter +=1		
	end

	fruits
end



