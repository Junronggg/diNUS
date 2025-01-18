class CreateDishes < ActiveRecord::Migration[8.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :video_url

      t.timestamps
    end
  end
end
