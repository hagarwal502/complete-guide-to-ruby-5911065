#!/usr/bin/env ruby

# Class Relationship Analyzer
# This script analyzes and displays the class relationships in the repository

puts "=== CLASS RELATIONSHIPS IN COMPLETE GUIDE TO RUBY ==="
puts

# Demo Project Relationships
puts "1. DEMO PROJECT - ANIMAL HIERARCHY"
puts "=" * 50

puts "Base Classes:"
puts "  Animal (base class)"
puts "    - Class variables: @@species, @@total_animals"
puts "    - Instance attributes: noise, color"
puts "    - Methods: sleep, initialize"
puts

puts "Inheritance Chain:"
puts "  Animal"
puts "  ├── Cow"
puts "  │   ├── Overrides: sleep method"
puts "  │   └── Adds: jump method"
puts "  ├── Duck"
puts "  │   └── Adds: fly method"
puts "  └── Pig"
puts "      └── Adds: eat method"
puts

puts "Module Mixins:"
puts "  Nameable (module)"
puts "  ├── Included by: Person"
puts "  ├── Included by: Chef"
puts "  └── Provides: first_name, last_name, full_name methods"
puts

puts "Chef Hierarchy:"
puts "  Chef (includes Nameable)"
puts "  └── AmateurChef"
puts "      └── Overrides: make_dinner (uses super)"
puts

# Restaurant Finder Relationships
puts "2. RESTAURANT FINDER APPLICATION"
puts "=" * 50

puts "Module Organization:"
puts "  RFinder (namespace module)"
puts "  ├── Controller"
puts "  ├── Guide"
puts "  └── Restaurant"
puts

puts "Class Relationships:"
puts "  Controller"
puts "  ├── Has-a: Guide (@guide instance)"
puts "  └── Delegates to: Guide for all business logic"
puts
puts "  Guide"
puts "  ├── Manages: Multiple Restaurant objects"
puts "  ├── Uses: CSV for persistence"
puts "  └── Provides: list, find, add, help methods"
puts
puts "  Restaurant"
puts "  ├── Includes: NumberHelper module"
puts "  ├── Attributes: name, cuisine, price"
puts "  └── Factory method: new_from_questions"
puts

puts "Support Modules:"
puts "  NumberHelper"
puts "  ├── Included by: Restaurant"
puts "  └── Provides: number_to_currency method"
puts

# Design Patterns
puts "3. DESIGN PATTERNS DEMONSTRATED"
puts "=" * 50

puts "Inheritance Patterns:"
puts "  • Single inheritance (Animal -> Cow/Duck/Pig)"
puts "  • Method overriding with specialized behavior"
puts "  • Super calls (AmateurChef extends Chef.make_dinner)"
puts

puts "Composition Patterns:"
puts "  • Controller has-a Guide (object composition)"
puts "  • Guide manages Restaurant collections"
puts

puts "Module Mixin Patterns:"
puts "  • Nameable mixed into Person and Chef"
puts "  • NumberHelper mixed into Restaurant"
puts "  • Provides shared functionality without inheritance"
puts

puts "Factory Patterns:"
puts "  • Animal.create_a_pig (class factory method)"
puts "  • Restaurant.new_from_questions (interactive factory)"
puts

puts "Namespace Patterns:"
puts "  • RFinder module groups related classes"
puts "  • Prevents naming conflicts"
puts

# Interaction Examples
puts "4. CLASS INTERACTION EXAMPLES"
puts "=" * 50

puts "Polymorphism in Animal Hierarchy:"
puts "  animals = [Cow.new, Duck.new, Pig.new]"
puts "  animals.each { |animal| animal.sleep }"
puts "  # Each animal implements sleep differently"
puts

puts "Restaurant Finder Workflow:"
puts "  controller = RFinder::Controller.new"
puts "  # Controller creates Guide instance"
puts "  # Guide manages Restaurant objects"
puts "  # NumberHelper formats prices"
puts

puts "Module Mixin Usage:"
puts "  chef = Chef.new"
puts "  chef.first_name = 'Julia'"
puts "  chef.last_name = 'Child'"
puts "  puts chef.full_name  # Uses Nameable module"
puts

puts "=" * 60
puts "For detailed documentation, see CLASS_RELATIONSHIPS.md"
puts "=" * 60