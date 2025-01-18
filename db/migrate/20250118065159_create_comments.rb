class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.string :user
      t.text :text
      t.integer :rating

      t.timestamps
    end
  end
end
