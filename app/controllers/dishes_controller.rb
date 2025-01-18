class DishesController < ApplicationController
    def random
      @dish = Dish.order('RANDOM()').first
    end
  
    def by_ingredients
      ingredients = params[:ingredients] # Expect an array of ingredient names
      @dishes = Dish.joins(:ingredients).where(ingredients: { name: ingredients }).distinct
    end
  end
  