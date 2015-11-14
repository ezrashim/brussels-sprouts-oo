#YOUR CODE GOES HERE
class Ingredient
  attr_accessor :quantity, :unit, :name
  def initialize (quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end
end

class Recipe
  def initialize (name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    puts "Name: #{@name}"
    puts ""
    puts "Ingredients"
    @ingredients.each do |ingredient|
      puts "- #{ingredient.summary}"
    end
    puts ""
    puts "Instructions"
    num = 1
    @instructions.each do |instruction|
      puts "#{num}. #{instruction}"
      num += 1
    end

  end
end

name = "Roasted Brussels Sprouts"

ingredients = [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]

instructions = [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ]

recipe = Recipe.new(name, instructions, ingredients)
recipe.summary

name_2 = "Chicken Noodle Soup"

ingredients_2 = [
  Ingredient.new(1, "tablespoon", "butter"),
  Ingredient.new(0.5, "cup", "chopped onion"),
  Ingredient.new(0.5, "cup", "chopped celery"),
  Ingredient.new(4, "cans", "chicken broth"),
  Ingredient.new(1, "can", "vegetable broth")
]

instructions_2 = [
  "In a large pot over medium heat, melt butter.",
  "Cook onion and celery in butter until just tender, 5 minutes.",
  "Pour in chicken and vegetable broths and stir in chicken, noodles, carrots, basil, oregano, salt and pepper.",
  "Bring to a boil, then reduce heat and simmer 20 minutes before serving."
]

chicken_noodle_recipe = Recipe.new(name_2, instructions_2, ingredients_2)
chicken_noodle_recipe.summary



require 'pry'
binding.pry
