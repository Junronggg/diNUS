require "test_helper"

class CookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cook_index_url
    assert_response :success
  end

  test "should get generate_dish" do
    get cook_generate_dish_url
    assert_response :success
  end

  test "should get by_ingredients" do
    get cook_by_ingredients_url
    assert_response :success
  end
end
