# Exercise 1: creating and accessing lists

# Create a vector `my_breakfast` of everything you ate for breakfast
my_breakfast <- c("cereal", "soymilk", "strawberry")

# Create a vector `my_lunch` of everything you ate (or will eat) for lunch
my_lunch <- c("chipotle")

# Create a list `meals` that has contains your breakfast and lunch
meal <- list(breakfast = my_breakfast, lunch = my_lunch)
print(meal)

# Add a "dinner" element to your `meals` list that has what you plan to eat 
# for dinner

meal$dinner <- c("steak", "7 up")

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- meal$dinner
print(dinner)

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason beyond practice)
meal[[5]] <- meals[["lunch"]]
print(meal)

# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early_meals`
early_meal <- meal[c("breakfast", "lunch") ]
print(early_meal)

### Challenge ###

# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function to apply the `length()` function to each item
meal(meal$breakfast)
meal(meal$lunch)
meal(meal$dinner)

num_items <- lapply(meal, length)
print(num_items)

# Write a function `add_pizza` that adds pizza to a given meal vector, and
# returns the pizza-fied vector
add_pizza <- function(meal_vector){
  #a add pizza to that vector
  #return the new vector
  new_vector <- c(meal_vector, "pizza")
  return(new_vector)
}

add_pizza("beet")

# Create a vector `better_meals` that is all your meals, but with pizza!
# lappy returns a list
lapply(meal, add_pizza)
