class CommentsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @comment = @restaurant.comments.build(comment_params)
    if @comment.save
      redirect_to @restaurant
    else
      render 'restaurants/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user, :text, :rating)
  end
end
