# Define ingredient categories and their respective items
ingredients_data = {
  'Vegetable' => ['Tomato', 'Lettuce', 'Cucumber', 'Spinach', 'Carrot', 'Broccoli', 'Mushrooms', 'Bell Pepper', 'Zucchini', 'Onion'],
  'Meat' => ['Chicken', 'Beef', 'Pork', 'Lamb', 'Turkey', 'Fish', 'Shrimp', 'Bacon', 'Sausage', 'Duck'],
  'Sauce' => ['Soy Sauce', 'Tomato Sauce', 'Barbecue Sauce', 'Mayonnaise', 'Mustard', 'Hot Sauce', 'Olive Oil', 'Vinegar', 'Sweet and Sour Sauce', 'Teriyaki Sauce'],
  'Other' => ['Salt', 'Pepper', 'Garlic', 'Ginger', 'Rice', 'Noodles', 'Cheese', 'Butter', 'Lemon', 'Honey']
}

# Iterate through each category and ingredient list, creating Ingredient records
ingredients_data.each do |category, items|
  items.each do |item|
    Ingredient.create(name: item, category: category)
  end
end

# Seed Dishes
dishes = [
  # Chinese Dishes
  { name: "Sweet and Sour Pork", ingredients: ["Pork", "Garlic", "Soy Sauce", "Sweet and Sour Sauce", "Carrot"], video_url: "https://example.com/sweet-and-sour-pork" },
  { name: "Kung Pao Chicken", ingredients: ["Chicken", "Chili", "Garlic", "Ginger", "Peanut Sauce"], video_url: "https://example.com/kung-pao-chicken" },
  { name: "Mapo Tofu", ingredients: ["Tofu", "Ground Pork", "Chili", "Black Bean Sauce", "Spring Onion"], video_url: "https://example.com/mapo-tofu" },
  { name: "Beef Chow Fun", ingredients: ["Beef", "Noodles", "Soy Sauce", "Garlic", "Bean Sprouts"], video_url: "https://example.com/beef-chow-fun" },
  { name: "Hot and Sour Soup", ingredients: ["Tofu", "Mushroom", "Carrot", "Chili Paste", "Soy Sauce"], video_url: "https://example.com/hot-and-sour-soup" },


  # Singaporean Dishes
  { name: "Hainanese Chicken Rice", ingredients: ["Chicken", "Rice", "Garlic", "Ginger", "Spring Onion"], video_url: "https://example.com/hainanese-chicken-rice" },
  { name: "Laksa", ingredients: ["Rice Vermicelli", "Coconut Milk", "Shrimp", "Chili Paste", "Laksa Leaves"], video_url: "https://example.com/laksa" },
  { name: "Char Kway Teow", ingredients: ["Rice Noodles", "Soy Sauce", "Egg", "Shrimp", "Bean Sprouts"], video_url: "https://example.com/char-kway-teow" },
  { name: "Chilli Crab", ingredients: ["Crab", "Chili Paste", "Garlic", "Egg", "Belacan"], video_url: "https://example.com/chilli-crab" },
  { name: "Roti Prata with Curry", ingredients: ["Flour", "Egg", "Peanut Sauce", "Curry", "Ghee"], video_url: "https://example.com/roti-prata" },
  { name: "Nasi Lemak", ingredients: ["Rice", "Coconut Milk", "Egg", "Anchovies", "Chili Paste"], video_url: "https://example.com/nasi-lemak" },
  { name: "Kaya Toast", ingredients: ["Bread", "Kaya", "Butter", "Egg"], video_url: "https://example.com/kaya-toast" },
  { name: "Mee Siam", ingredients: ["Rice Vermicelli", "Chili Paste", "Tamarind", "Shrimp", "Egg"], video_url: "https://example.com/mee-siam" },
  { name: "Satay", ingredients: ["Chicken", "Peanut Sauce", "Cucumber", "Onion", "Rice Cake"], video_url: "https://example.com/satay" },
  { name: "Bak Kut Teh", ingredients: ["Pork Ribs", "Garlic", "Pepper", "Soy Sauce", "Herbs"], video_url: "https://example.com/bak-kut-teh" },

  # Western Dishes
  { name: "Spaghetti Carbonara", ingredients: ["Spaghetti", "Bacon", "Egg", "Parmesan", "Cream"], video_url: "https://example.com/spaghetti-carbonara" },
  { name: "Caesar Salad", ingredients: ["Lettuce", "Parmesan", "Croutons", "Chicken", "Caesar Dressing"], video_url: "https://example.com/caesar-salad" },
  { name: "Margherita Pizza", ingredients: ["Bread", "Tomato", "Mozzarella", "Basil", "Olive Oil"], video_url: "https://example.com/margherita-pizza" },
  { name: "Beef Burger", ingredients: ["Ground Beef", "Bread", "Lettuce", "Tomato", "Cheese"], video_url: "https://example.com/beef-burger" },
  { name: "Grilled Cheese Sandwich", ingredients: ["Bread", "Cheese", "Butter"], video_url: "https://example.com/grilled-cheese" },
  { name: "Fish and Chips", ingredients: ["Fish", "Potato", "Flour", "Oil", "Salt"], video_url: "https://example.com/fish-and-chips" },
  { name: "Tomato Soup", ingredients: ["Tomato", "Garlic", "Onion", "Cream", "Basil"], video_url: "https://example.com/tomato-soup" },
  { name: "Mac and Cheese", ingredients: ["Pasta", "Cheese", "Milk", "Butter", "Flour"], video_url: "https://example.com/mac-and-cheese" },
  { name: "Roast Chicken", ingredients: ["Chicken Breast", "Thyme", "Rosemary", "Lemon", "Garlic"], video_url: "https://example.com/roast-chicken" },
  { name: "Eggplant Parmesan", ingredients: ["Eggplant", "Tomato", "Mozzarella", "Parmesan", "Basil"], video_url: "https://example.com/eggplant-parmesan" }
]

dishes.each do |dish_data|
  dish = Dish.create!(name: dish_data[:name], video_url: dish_data[:video_url])
  dish.ingredients << Ingredient.where(name: dish_data[:ingredients])
end

puts "Database seeded with #{Ingredient.count} ingredients and #{Dish.count} dishes!"
