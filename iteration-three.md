!SLIDE vertical-center

# Iteration 3

!SLIDE center

# Recipe Definition

!SLIDE

## Defining a Recipe

```ruby
definition = RecipeDefinition.new

definition.name "Chocolate Chip Cookies"

definition.ingredient "butter", 1.cup, "softened"
definition.ingredient "white sugar", 1.cup
# ...

definition.instruction "Preheat oven to 350 degrees F (175 degrees C)."
definition.instruction "Cream together the butter, white sugar, and brown sugar until smooth."
# ...

definition.serves 4.dozen, "cookies"

cookies = definition.recipe

puts cookies.name # => "Chocolate Chip Cookies"
```

!SLIDE vertical-center

## Units

```ruby
16.ounces
2.cups
```

!SLIDE

## Monkeypatching

```ruby
class Fixnum

  def ounces
    self * 16
  end

  def cup
    self
  end
end
```

!SLIDE quote

## Sharing with Modules

```ruby
module Measurements
  def cup
    self
  end

  def ounces
    self * 16
  end
end

class Fixnum
  include Measurements
end

class Float
  include Measurements
end
```

!SLIDE

## Collecting up the ingredients

```ruby
class RecipeDefinition
  def initialize(name)
    @name = name
    @ingredients = []
  end

  def ingredient(name,amount,details)
    @ingredients.push "#{amount} cups #{name} #{details}"
  end
end
```

!SLIDE

## Lazy Initialization

```ruby
class RecipeDefinition

  # ...

  def ingredient(name,amount,details)
    @ingredients ||= []
    @ingredients.push "#{amount} cups #{name} #{details}"
  end
end
```

!SLIDE

## Lazy Initialization

```ruby
class RecipeDefinition

  # ...

  def ingredients
    @ingredients ||= []
  end

  def ingredient(name,amount,details)
    ingredients.push "#{amount} cups #{name} #{details}"
  end
end
```

!SLIDE

![Advanced](advanced-2.jpg)

!SLIDE

## Initization Block

```ruby
definition = RecipeDefinition.new "Chocolate Chip Cookies" do |d|

  d.ingredient "butter", 1.cup, "softened"
  d.ingredient "white sugar", 1.cup

  d.instruction "Preheat oven to 350 degrees F (175 degrees C)."
  d.instruction "Cream together the butter, white sugar, and brown sugar until smooth."

  d.serves 4.dozen, "cookies"
end

cookies = definition.recipe

puts cookies.name # => "Chocolate Chip Cookies"
```

!SLIDE

## yield self if block_given?

```ruby
class RecipeDefinition
  def initialize(name)
    @name = name
    # ...
    yield self if block_given?
  end
end
```

!SLIDE

![Advanced](advanced-3.jpg)


!SLIDE

## Now Without the Block Parameter

```ruby
definition = RecipeDefinition.new "Chocolate Chip Cookies" do

  ingredient "butter", 1.cup, "softened"
  ingredient "white sugar", 1.cup

  instruction "Preheat oven to 350 degrees F (175 degrees C)."
  instruction "Cream together the butter, white sugar, and brown sugar until smooth."

  serves 4.dozen, "cookies"
end

cookies = definition.recipe

puts cookies.name # => "Chocolate Chip Cookies"
```

!SLIDE

## Where Blocks Have No Names

```ruby
class RecipeDefinition
  def initialize(name)
    @name = name
    # ...
    yield self if block_given?
  end
end
```

!SLIDE

## Name That Block

```ruby
class RecipeDefinition
  def initialize(name,&block)
    @name = name
    # ...
    block.call(self) if block
  end
end
```

!SLIDE

## *instance_eval* ing the block

Execute the Block within the Instance

```ruby
class RecipeDefinition
  def initialize(name,&block)
    @name = name
    # ...
    instance_eval(&block)
  end
end
```

!SLIDE vertical-center

# Recipe Definition



!SLIDE

```ruby
# First
definition = RecipeDefinition.new
definition.name "Chocolate Chip Cookies"
definition.ingredient "butter", 1.cup, "softened"
definition.instruction "Preheat oven to 350 degrees F (175 degrees C)."
definition.serves 4.dozen, "cookies"

# yield self if block_given?
definition = RecipeDefinition.new do |d|
  d.name "Chocolate Chip Cookies"

  d.ingredient "butter", 1.cup, "softened"
  d.instruction "Preheat oven to 350 degrees F (175 degrees C)."
  d.serves 4.dozen, "cookies"
end

# instance_eval(&block)
definition = RecipeDefinition.new do
  name "Chocolate Chip Cookies"

  ingredient "butter", 1.cup, "softened"
  instruction "Preheat oven to 350 degrees F (175 degrees C)."
  serves 4.dozen, "cookies"
end
```

!SLIDE vertical-center

# Break

!SLIDE vertical-center

# Review