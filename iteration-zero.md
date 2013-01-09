!SLIDE vertical-center

# Iteration 0

!SLIDE vertical-center incremental

## Create a Recipe model

A recipe is a class which that is initialized with three params:

* name
* a list of ingredients
* a list of instructions

```ruby
cookies = Recipe.new "Chocolate Chip Cookies", [ "1 cup ..." ], [ "Preheat ..." ]
puts cookies.name
```
```bash
$ ruby lib/recipe.rb
Chocolate Chip Cookies
```

!SLIDE vertical-center

## Files and Folders
```bash
$ mkdir lib
$ touch lib/recipe.rb
$ vi lib/recipe.rb

!SLIDE

## Class Creation

```ruby
class Rectangle
  def initialize(length,width)
    @length = length
    @width = width
  end
end
```

!SLIDE

## Creating an Instance

```ruby
class Rectangle
  def initialize(length,width)
    @length = length
    @width = width
  end
end

instance = Rectangle.new 20, 30
```

!SLIDE 

## Defining Getters

```ruby
class Rectangle
  def initialize(length,width)
    @length = length
    @width = width
  end

  def length
    @length
  end
  
  def width
    @width
  end
end

instance = Rectangle.new 20, 30
instance.length
```

!SLIDE

## *attr_reader*

```ruby
class Rectangle
  def initialize(length,width)
    @length = length
    @width = width
  end

  attr_reader :length
  attr_reader :width
end

instance = Rectangle.new 20, 30
instance.length
```

!SLIDE

## *attr_reader*

```ruby
class Rectangle
  def initialize(length,width)
    @length = length
    @width = width
  end

  attr_reader :length, :width
end

instance = Rectangle.new 20, 30
instance.length
```

!SLIDE vertical-center

## Create a Recipe model

A recipe is a class which that is initialized with three params:

* name
* a list of ingredients
* a list of instructions

```ruby
cookies = Recipe.new "Chocolate Chip Cookies", [ "1 cup ..." ], [ "Preheat ..." ]
puts cookies.name
```
```bash
$ ruby lib/recipe.rb
Chocolate Chip Cookies
```

!SLIDE vertical-center

# Break

!SLIDE vertical-center

# Review