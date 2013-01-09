!SLIDE vertical-center

# Iteration 2

!SLIDE vertical-center

# Feature Request

Recipes should tell us if they include a particular ingredient

```ruby
cookies = Recipe.new name: "Chocolate Chip Cookies",
  ingredients: [ "1 cup white sugar" ],
  instructions: [ "Preheat ..." ],
  serves: "2 dozen cookies"

puts cookies.include? 'white sugar' # => true
puts cookies.include? 'peanuts'     # => false
```

!SLIDE vertical-center

## Methods That Ask Questions

```ruby
class Recipe

  # ...

  def has_ingredient(ingredient)
    # ...
  end

end
```

!SLIDE vertical-center

## Methods That Ask Questions

```ruby
class Recipe

  # ...

  def include?(ingredient)
    # ...
  end
end
```

!SLIDE vertical-center

## Finding Something In An Array

```ruby
[ :red, :green, :blue ].include? :red                         # => true

[ "1 cup white sugar", "1 cup flour" ].include? "white sugar" # => false
```

!SLIDE vertical-center

## *Array#find*

```ruby
[ :red, :green, :blue ].find {|item| item == :red }    # => true

[ "1 cup white sugar", "1 cup flour" ].find do |item|
  item.include? "white sugar"
end                                                    # => true
```

!SLIDE

![Advanced](advanced.jpg)

!SLIDE vertical-center

## Does it include multiple things?

```ruby
cookies.include? 'white sugar', 'peanuts'
```

!SLIDE vertical-center

## Does it include multiple things?

```ruby
class Recipe

  # ...

  def include?(first,second,third, ...)
    # ...
  end
end
```

!SLIDE vertical-center

## Splat Parameter

```ruby
class Recipe

  # ...

  def include?(*ingredients)
    results = ingredients.collect do |ingredient|
      # ...
    end

    # Did we find at least one of the ingredients
    results.find {|result| result.include? true }
  end
end
```

!SLIDE vertical-center

# Feature Request

Recipes should tell us if they include a particular ingredient

```ruby
cookies = Recipe.new name: "Chocolate Chip Cookies",
  ingredients: [ "1 cup white sugar" ],
  instructions: [ "Preheat ..." ],
  serves: "2 dozen cookies"

puts cookies.include? 'white sugar' # => true
puts cookies.include? 'peanuts'     # => false
```

!SLIDE vertical-center

# Break

!SLIDE vertical-center

# Review