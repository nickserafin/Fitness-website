require 'test_helper'

class NutritionClientsControllerTest < ActionController::TestCase
  setup do
    @nutrition_client = nutrition_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nutrition_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nutrition_client" do
    assert_difference('NutritionClient.count') do
      post :create, nutrition_client: @nutrition_client.attributes
    end

    assert_redirected_to nutrition_client_path(assigns(:nutrition_client))
  end

  test "should show nutrition_client" do
    get :show, id: @nutrition_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nutrition_client
    assert_response :success
  end

  test "should update nutrition_client" do
    put :update, id: @nutrition_client, nutrition_client: @nutrition_client.attributes
    assert_redirected_to nutrition_client_path(assigns(:nutrition_client))
  end

  test "should destroy nutrition_client" do
    assert_difference('NutritionClient.count', -1) do
      delete :destroy, id: @nutrition_client
    end

    assert_redirected_to nutrition_clients_path
  end
end
