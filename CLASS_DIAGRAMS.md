# Class Relationship Diagrams

## ASCII UML-Style Class Diagrams

### 1. Demo Project - Animal Hierarchy

```
┌─────────────────┐     ┌──────────────────┐
│   <<module>>    │     │     Animal       │
│    Nameable     │     │  (base class)    │
│                 │     │                  │
│ + first_name    │     │ @@species        │
│ + last_name     │     │ @@total_animals  │
│ + full_name()   │     │ + noise          │
│ + initial_and   │     │ + color          │
│   _last_name()  │     │ + sleep()        │
└─────────────────┘     │ + initialize()   │
         ^               └──────────────────┘
         │                         ^
         │includes                 │inherits
         │                         │
┌─────────────────┐                │
│     Person      │                │
│                 │                │
│ + say_hello()   │     ┌──────────┼──────────┐
└─────────────────┘     │          │          │
         ^               │          │          │
         │includes       │          │          │
┌─────────────────┐     │          │          │
│      Chef       │     │          │          │
│                 │     │          │          │
│ + make_dinner() │     │          │          │
└─────────────────┘     │          │          │
         ^               │          │          │
         │inherits       │          │          │
┌─────────────────┐   ┌─▼──┐    ┌─▼───┐   ┌─▼──┐
│  AmateurChef    │   │Cow │    │Duck │   │Pig │
│                 │   │    │    │     │   │    │
│ + make_dinner() │   │+jump│    │+fly │   │+eat│
│   (uses super)  │   └────┘    └─────┘   └────┘
└─────────────────┘
```

### 2. Restaurant Finder Application

```
┌──────────────────────────────────────────────────────────┐
│                    RFinder Module                       │
│  (namespace for all restaurant finder classes)          │
└──────────────────────────────────────────────────────────┘
                              │
                              │contains
                              │
     ┌────────────────────────┼────────────────────────┐
     │                        │                        │
┌────▼──────┐        ┌────────▼───┐          ┌────────▼─────┐
│Controller │        │   Guide    │          │ Restaurant   │
│           │        │            │          │              │
│@@valid_   │◄─────has│@@storage_  │◄───manages│+ name        │
│  actions  │        │  filename  │          │+ cuisine     │
│@guide     │        │@@width     │          │+ price       │
│           │        │@storage_   │          │              │
│+launch!() │        │  path      │          │+initialize() │
│+get_      │        │            │          │+formatted_   │
│ action()  │        │+list()     │          │ price()      │
│+do_       │        │+find()     │          │              │
│ action()  │        │+add()      │          │◄─────────────┐
└───────────┘        │+help()     │          └──────────────┘│
                     │            │                          │
                     │+all_       │                          │
                     │ restaurants│                          │
                     │+sort_      │                          │
                     │ restaurants│                          │
                     │+filter_    │                          │
                     │ restaurants│                          │
                     └────────────┘                          │
                                                             │
                     ┌─────────────────────┐                 │
                     │   <<module>>        │                 │
                     │  NumberHelper       │                 │
                     │                     │                 │
                     │+number_to_currency()│─────────includes─┘
                     └─────────────────────┘
```

### 3. Relationship Types Legend

```
Inheritance:     ─────►  (is-a relationship)
Composition:     ◄───has (has-a relationship)  
Module Mixin:    ◄───includes (mixed-in functionality)
Dependency:      ┌───┐ (uses or requires)
Namespace:       │...│ (contains classes/modules)
```

### 4. Method Override and Extension Patterns

```
Chef.make_dinner():
┌─────────────────────┐
│ "Lay out ingredients" │
│ "Cook food"         │
└─────────────────────┘

AmateurChef.make_dinner():
┌─────────────────────┐
│ "Read recipe"       │ ← Added behavior
├─────────────────────┤
│ super              │ ← Calls parent method
│ (Chef.make_dinner)  │   
├─────────────────────┤
│ "Clean up mess"     │ ← Added behavior
└─────────────────────┘

Animal.sleep():
┌─────────────────────┐
│ "The Animal sleeps" │ ← Default implementation
└─────────────────────┘

Cow.sleep():
┌─────────────────────┐
│ "The Cow counts     │ ← Overridden behavior
│  some sheep"        │
└─────────────────────┘
```