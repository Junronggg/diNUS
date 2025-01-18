
ActiveRecord::Schema[8.0].define(version: 2025_01_18_074219) do
  create_table "dish_ingredients", force: :cascade do |t|
    t.integer "dish_id", null: false
    t.integer "ingredient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_dish_ingredients_on_dish_id"
    t.index ["ingredient_id"], name: "index_dish_ingredients_on_ingredient_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.string "video_url"
    
    create_table "comments", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.string "user"
    t.text "text"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_comments_on_restaurant_id"
  end
    
 create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "cuisine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  add_foreign_key "dish_ingredients", "dishes"
  add_foreign_key "dish_ingredients", "ingredients"

  add_foreign_key "comments", "restaurants"

end
