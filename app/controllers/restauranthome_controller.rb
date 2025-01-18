class RestauranthomeController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
end
