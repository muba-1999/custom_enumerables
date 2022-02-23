require "./main.rb"

test_hash = {name: 'Jane', age: 20}
test_array = [1, 2, 3, 4, 5]
numbers = [21, 42, 303, 499, 550, 811]
fruits = ["apple", "banana", "strawberry", "pineapple"]
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

puts "======================================================"
puts "built in each method"
puts "======================================================"
test_hash.each {|key, val| puts "key: #{key} value: #{val}"}
test_array.each {|val| puts val}

puts "======================================================"
puts "cumstom my_each method"
puts "======================================================"
test_hash.my_each {|key, val| puts "key: #{key} value: #{val}"}
test_array.each {|val| puts val}

puts "======================================================"
puts "built in select method"
puts "======================================================"
invited = friends.select {|friend| friend != 'Brian'}
print "#{invited}\n"
puts
puts "======================================================"
puts "cumstom my_select method"
puts "======================================================"
invited = friends.select {|friend| friend != 'Brian'}
print "#{invited}\n"

puts
puts "======================================================"
puts "built in each_with_index method"
puts "======================================================"
print "#{friends}\n"
friends.each_with_index {|friend, index| puts friend if index.even?}

puts
puts "======================================================"
puts "custom my_each_with_index method"
puts "======================================================"
print "#{friends}\n"
friends.my_each_with_index {|friend, index| puts friend if index.even?}

puts
puts "======================================================"
puts "built in map method"
puts "======================================================"
p friends.map {|friend| friend.upcase}

puts
puts "======================================================"
puts "custom my_map method"
puts "======================================================"
p friends.map {|friend| friend.upcase}

puts
puts "======================================================"
puts "built in inject method"
puts "======================================================"
voted = votes.inject(Hash.new(0)) do |result, vote|
	result[vote] = vote.length
	result
end
p voted

def multiply_els(arr)
	return arr.inject {|a, b| a * b}
end

p multiply_els([2,4,5])

puts
puts "======================================================"
puts "custom my_inject method"
puts "======================================================"
voted = votes.my_inject(Hash.new(0)) do |result, vote|
	result[vote] = vote.length
	result
end
p voted

def multiply_els(arr)
	return arr.my_inject {|a, b| a * b}
end

p multiply_els([2,4,5])


puts
puts "======================================================"
puts "built in all? method"
puts "======================================================"
p fruits.all? {|fruit| fruit.length > 3}
p fruits.all? {|fruit| fruit.length > 6}

puts
puts "======================================================"
puts "custom my_all? method"
puts "======================================================"
p fruits.my_all? {|fruit| fruit.length > 3}
p fruits.my_all? {|fruit| fruit.length > 6}

puts "======================================================"
puts "built in none? method"
puts "======================================================"
p fruits.none? { |fruit| fruit.length > 10 }
p fruits.none? { |fruit| fruit.length > 6 }

puts
puts "======================================================"
puts "custom my_none? method"
puts "======================================================"
p fruits.my_none? { |fruit| fruit.length > 10 }
p fruits.my_none? { |fruit| fruit.length > 6 }

puts
puts "======================================================"
puts "built in any? method"
puts "======================================================"
p numbers.any? {|number| number > 500}

puts
puts "======================================================"
puts "custom my_any? method"
puts "======================================================"
p numbers.my_any? {|number| number > 500}

puts
puts "======================================================"
puts "built in count method"
puts "======================================================"
p numbers.count {|number| number > 300}

puts
puts "======================================================"
puts "custom my_count method"
puts "======================================================"
p numbers.my_count {|number| number > 300}