!SLIDE vertical-center

# Iteration 1

!SLIDE vertical-center

# Feature Request

Recipes should optionally have servings

!SLIDE vertical-center

## That was Easy!

```ruby
class Recipe
  def initialize(name,ingredients,instructions)
    # ...
  end

  def initialize(name,ingredients,instructions,servings)
    # ...
  end
end
```

!SLIDE vertical-center

## Yay!

```ruby
cookies_with_servings = Recipe.new "Chocolate Chip Cookies",
  [ "1 cup ..." ],
  [ "Preheat ..." ],
  "1 dozen cookies"

puts cookies_with_servings.name
```

!SLIDE vertical-center

## Boo!

```ruby
cookies = Recipe.new "Chocolate Chip Cookies",
  [ "1 cup ..." ],
  [ "Preheat ..." ]

puts cookies.name
```

!SLIDE vertical-center

## Methods

```ruby
class Recipe
  # def initialize(name,ingredients,instructions)
  #  # ...
  # end

  def initialize(name,ingredients,instructions,servings)
    # ...
  end
end
```

* Method names, not signatures
* The last one wins

!SLIDE vertical-center

## Parameter Defaults

```ruby
class Recipe
  def initialize(name,ingredients,instructions,servings = nil)
    # ...
  end
end
```

!SLIDE vertical-center

## What Happens When We Get More Parameters?

!SLIDE vertical-center

## When Will It Stop!

```ruby
cookies = Recipe.new "Chocolate Chip Cookies",
  [ "1 cup ..." ],
  [ "Preheat ..." ],
  "1 dozen cookies",
  "Julia Child",
  ...
```

!SLIDE vertical-center

## Named Parameters

```ruby
class Recipe
  def initialize(parameters)
    @name = parameters[:name]
    # ...
  end
end

cookies = Recipe.new name: "Chocolate Chip Cookies",
  ingredients: [ "1 cup ..." ],
  instructions: [ "Preheat ..." ],
  serves: "1 dozen cookies"
```


!SLIDE

## Update Your Recipe model

Add a new servings parameter

```ruby
cookies = Recipe.new "Chocolate Chip Cookies", [ "1 cup ..." ], [ "Preheat ..." ]

puts cookies.name

cookies_with_servings = Recipe.new "Chocolate Chip Cookies",
  [ "1 cup ..." ],
  [ "Preheat ..." ],
  "1 dozen cookies"

puts cookies_with_servings.name

oatmeal_cookies = Recipe.new name: "Oatmeal Cookies",
  ingredients: [ "1 cup ..." ],
  instructions: [ "Preheat ..." ],
  serves: "2 dozen cookies"

puts oatmeal_cookies.name
```

!SLIDE vertical-center

# Break

!SLIDE vertical-center

# Review
