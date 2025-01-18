class CookController < ApplicationController
  def index
  end

  def generate_dish
    @dish = Dish.order("RANDOM()").first
  end

  def by_ingredients
    # Fetch all ingredients for the checkboxes
    @ingredients = Ingredient.all

    # If ingredients were selected, find the matching dishes
    if params[:ingredients].present?
      selected_ingredients = params[:ingredients]

      # Find dishes that match all selected ingredients
      @dishes = Dish.joins(:ingredients)
                    .where(ingredients: { name: selected_ingredients })
                    .group('dishes.id')
                    .having('COUNT(ingredients.id) = ?', selected_ingredients.size)
    else
      @dishes = []  # No ingredients selected
    end
  end
end
