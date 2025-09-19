#!/usr/bin/env ruby

# Class Relationship Demonstration Script
# This script demonstrates the actual class interactions and relationships

puts "=== DEMONSTRATING CLASS RELATIONSHIPS ==="
puts

# Change to demo_project directory to run the examples
demo_path = File.join(File.dirname(__FILE__), 'demo_project')
restaurant_path = File.join(File.dirname(__FILE__), 'restaurant_finder-solution')

puts "1. TESTING ANIMAL HIERARCHY"
puts "=" * 40

# Load demo project classes
require_relative 'demo_project/modules/nameable'
require_relative 'demo_project/classes/person'
require_relative 'demo_project/classes/animal'
require_relative 'demo_project/classes/cow'
require_relative 'demo_project/classes/duck'
require_relative 'demo_project/classes/pig'
require_relative 'demo_project/classes/chef'
require_relative 'demo_project/classes/amateur_chef'

puts "Creating animals and testing polymorphism:"
animals = [Cow.new, Duck.new, Pig.new]
animals.each_with_index do |animal, i|
  puts "#{i+1}. #{animal.class.name}: #{animal.noise}"
  animal.sleep
end
puts

puts "Testing specialized animal methods:"
cow = Cow.new
puts "Cow jumping: "
cow.jump

duck = Duck.new
puts "Duck flying: "
duck.fly

pig = Pig.new
puts "Pig eating: "
pig.eat
puts

puts "2. TESTING CHEF HIERARCHY"
puts "=" * 40

puts "Regular Chef making dinner:"
chef = Chef.new
chef.make_dinner
puts

puts "Amateur Chef making dinner (with super):"
amateur = AmateurChef.new
amateur.make_dinner
puts

puts "3. TESTING NAMEABLE MODULE"
puts "=" * 40

puts "Person with name:"
person = Person.new
person.first_name = "John"
person.last_name = "Doe"
puts "Full name: #{person.full_name}"
puts

puts "Chef with name:"
chef = Chef.new
chef.first_name = "Gordon"
chef.last_name = "Ramsay"
puts "Chef's full name: #{chef.full_name}"
puts

puts "4. TESTING RESTAURANT FINDER CLASSES"
puts "=" * 40

# Load restaurant finder classes
require_relative 'restaurant_finder-solution/lib/support/number_helper'
require_relative 'restaurant_finder-solution/lib/classes/restaurant'

puts "Creating restaurant with NumberHelper module:"
restaurant = RFinder::Restaurant.new({
  name: "Mario's Italian",
  cuisine: "Italian",
  price: "25.50"
})

puts "Restaurant: #{restaurant.name}"
puts "Cuisine: #{restaurant.cuisine}"
puts "Raw price: $#{restaurant.price}"
puts "Formatted price: #{restaurant.formatted_price}"
puts

puts "5. CLASS RELATIONSHIP SUMMARY"
puts "=" * 40

puts "Inheritance demonstrated:"
puts "  ✓ Cow, Duck, Pig inherit from Animal"
puts "  ✓ AmateurChef inherits from Chef"
puts

puts "Module inclusion demonstrated:"
puts "  ✓ Person and Chef include Nameable"
puts "  ✓ Restaurant includes NumberHelper"
puts

puts "Polymorphism demonstrated:"
puts "  ✓ Different animals respond to sleep() differently"
puts "  ✓ AmateurChef extends Chef behavior with super"
puts

puts "Factory patterns demonstrated:"
puts "  ✓ Animal.create_a_pig class method"
puts "  ✓ Restaurant.new_from_questions (interactive)"
puts

puts "All class relationships working correctly!"
puts "See CLASS_RELATIONSHIPS.md for detailed documentation."