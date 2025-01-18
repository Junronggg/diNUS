class HomeController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
end
