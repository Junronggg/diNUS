class RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
      render json: @restaurants, include: :comments
    end
  
    def show
      @restaurant = Restaurant.find(params[:id])
      @comment = Comment.new
      @average_rating = @restaurant.comments.any? ? @restaurant.comments.average(:rating).round(2) : "No data"
    end
  
    def create
      @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
        render json: @restaurant, status: :created
      else
        render json: @restaurant.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :cuisine, :rating)
    end
  end
  
