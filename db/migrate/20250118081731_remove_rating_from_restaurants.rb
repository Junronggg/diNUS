class RemoveRatingFromRestaurants < ActiveRecord::Migration[8.0]
  def change
    remove_column :restaurants, :rating, :integer
  end
end
