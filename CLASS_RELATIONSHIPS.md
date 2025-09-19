# Class Relationships in Complete Guide to Ruby

## Overview

This repository contains multiple Ruby projects demonstrating various object-oriented programming concepts. While there is no `iprice_unifier.h` file (this being a Ruby, not C/C++, repository), there are several interesting class hierarchies and relationships that demonstrate important programming patterns.

## Main Projects and Their Class Structures

### 1. Demo Project - Animal Hierarchy

The demo project demonstrates classical inheritance and module mixins:

#### Base Classes and Modules
- **Nameable** (Module) - Provides naming functionality with `first_name`, `last_name`, and `full_name` methods
- **Animal** (Base Class) - Parent class for all animals with common behavior like `sleep`
- **Person** (Class) - Includes Nameable module for name management

#### Animal Inheritance Hierarchy
```
Animal (Base Class)
├── Cow (inherits from Animal)
├── Duck (inherits from Animal)
└── Pig (inherits from Animal)
```

#### Chef Class Hierarchy
```
Person (includes Nameable)
Chef (includes Nameable)
└── AmateurChef (inherits from Chef)
```

### 2. Restaurant Finder Application

The restaurant finder demonstrates a more complex application architecture:

#### Module Organization
All classes are wrapped in the `RFinder` module for namespace organization.

#### Class Relationships
```
RFinder Module
├── Controller (main application controller)
├── Guide (business logic handler)
└── Restaurant (data model)
```

#### Support Modules
- **NumberHelper** (Module) - Provides currency formatting functionality

## Detailed Class Analysis

### Animal Hierarchy Classes

#### Animal (Base Class)
- **Purpose**: Base class for all animal types
- **Key Features**:
  - Class variables: `@@species`, `@@total_animals`
  - Instance attributes: `noise`, `color`
  - Common behavior: `sleep` method
  - Factory methods: `create_a_pig`

#### Specialized Animal Classes
Each animal class inherits from Animal and customizes behavior:

- **Cow**: Overrides `sleep`, adds `jump` method
- **Duck**: Adds `fly` method
- **Pig**: Adds `eat` method

### Chef Hierarchy Classes

#### Chef Class
- **Purpose**: Represents a professional chef
- **Includes**: Nameable module for name management
- **Key Methods**: `make_dinner`

#### AmateurChef Class
- **Purpose**: Represents an amateur chef with additional steps
- **Inherits from**: Chef
- **Key Features**: Overrides `make_dinner` using `super` to extend behavior

### Restaurant Finder Classes

#### Controller Class
- **Purpose**: Handles user interaction and input/output
- **Relationships**: 
  - Creates and manages a `Guide` instance
  - Delegates all business logic to the Guide
- **Key Features**: Input validation, action routing

#### Guide Class
- **Purpose**: Core business logic for restaurant management
- **Relationships**: 
  - Creates and manages `Restaurant` instances
  - Uses CSV for data persistence
- **Key Methods**: `list`, `find`, `add`, `help`

#### Restaurant Class
- **Purpose**: Data model representing a restaurant
- **Includes**: NumberHelper module for price formatting
- **Key Features**: Factory method `new_from_questions` for user input

## Design Patterns Demonstrated

### 1. Inheritance
- **Single Inheritance**: All animal classes inherit from Animal
- **Method Overriding**: Specialized classes override parent methods
- **Super Calls**: AmateurChef uses `super` to extend parent behavior

### 2. Module Mixins
- **Nameable Module**: Provides naming functionality to Person and Chef classes
- **NumberHelper Module**: Provides currency formatting to Restaurant class

### 3. Composition
- **Controller-Guide Relationship**: Controller creates and uses a Guide instance
- **Guide-Restaurant Relationship**: Guide manages collections of Restaurant objects

### 4. Factory Pattern
- **Animal.create_a_pig**: Factory method for creating specific animal types
- **Restaurant.new_from_questions**: Factory method for interactive restaurant creation

### 5. Namespace Organization
- **RFinder Module**: Groups related classes together to avoid naming conflicts

## Key Relationships Summary

1. **Inheritance Relationships**:
   - `Cow`, `Duck`, `Pig` inherit from `Animal`
   - `AmateurChef` inherits from `Chef`

2. **Module Inclusion Relationships**:
   - `Person` and `Chef` include `Nameable`
   - `Restaurant` includes `NumberHelper`

3. **Composition Relationships**:
   - `Controller` has-a `Guide`
   - `Guide` manages multiple `Restaurant` objects

4. **Dependency Relationships**:
   - All RFinder classes depend on the RFinder module namespace
   - Classes require their dependencies via `require_relative`

## Usage Examples

### Animal Hierarchy Usage
```ruby
# Create animals and demonstrate polymorphism
animals = [Cow.new, Duck.new, Pig.new]
animals.each { |animal| animal.sleep }  # Each implements sleep differently
```

### Restaurant Finder Usage
```ruby
# Start the application
controller = RFinder::Controller.new
controller.launch!  # Provides interactive restaurant management
```

This class structure demonstrates fundamental object-oriented principles including inheritance, composition, module mixins, and proper separation of concerns.