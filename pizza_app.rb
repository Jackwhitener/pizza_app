puts "How many random pizzas do you want?"

def randsize
	size = [9,12,16,18,24].sample
end
def randcrust
	crust = ["thin", "thick", "thick cheesy", "sicilian", "no crust, somehow"].sample
end
def randsauce
	sauce =[ "tomato", "ricotta", "alfredo", "buffalo", "bbq", "no sauce"].sample
end
def randcheese
	cheese = ["mozarella","feta","parmesan", "no cheese"].sample
end
def randvegetal
	vegetal = ["Onions", "Jalepenos", "Black Olives", "Mushrooms", "tomatoes", "no vegetables"].sample
end
def randmeat
	meat = ["pepperoni", "bacon" "ham", "bigfoot meat", "lions and tigers and bears, oh my", "no meat"].sample
end
# # puts "How many inches in diameter is your pizza?"
# # size = gets.chomp
# # puts "What kind of crust is on your pizza?"
# # crust = gets.chomp
# # puts "What kind of sauce is on your pizza?"
# # sauce = gets.chomp
# # puts "What kind of cheese is on your pizza"
# # cheese = gets.chomp
# # puts "Which toppings do you want on your pizza?"
# # toppings = gets.chomp
def pizza(size,crust,sauce,cheese,vegetables,meat)
	puts "a #{size} inch pie, with #{crust} crust, #{sauce} sauce, #{cheese} cheese, with #{randvegetal}, and #{randmeat} on top."
end
isgettingnumber = true
while isgettingnumber == true
number = gets.to_i
counter = 0
price = 0
if number < 1
	puts "We asked for a number of pizzas, ya dingus. Try again."
	isgettingnumber = true
else
	puts "Okay, here ya go!"
	isgettingnumber = false
end
end

number.times do 
	counter += 1
	if randsize == 9
		price += 5
	elsif randsize == 12
		price += 7
	elsif randsize == 16
		price += 9
	elsif randsize == 18
		price += 12
	elsif randsize == 24
		price += 15
	end 
	if randvegetal == "no vegetables"
		price += 0
	else
		price += 2
	end
	if randmeat == "no meat"
		price += 0
	else
		price += 3 
	end
	print "Pizza #{counter} is "
	pizza(randsize,randcrust,randsauce,randcheese,randvegetal,randmeat)
end 
puts "Your final charge is $#{price}"