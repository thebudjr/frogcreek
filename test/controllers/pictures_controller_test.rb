require 'test_helper'

class PicturesControllerTest < ActionController::TestCase
  setup do
    @picture = pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create picture" do
    assert_difference('Picture.count') do
      post :create, picture: { availability: @picture.availability, description: @picture.description, name: @picture.name, photographer: @picture.photographer, price1: @picture.price1, price2: @picture.price2, price3: @picture.price3, size1: @picture.size1, size2: @picture.size2, size3: @picture.size3 }
    end

    assert_redirected_to picture_path(assigns(:picture))
  end

  test "should show picture" do
    get :show, id: @picture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @picture
    assert_response :success
  end

  test "should update picture" do
    patch :update, id: @picture, picture: { availability: @picture.availability, description: @picture.description, name: @picture.name, photographer: @picture.photographer, price1: @picture.price1, price2: @picture.price2, price3: @picture.price3, size1: @picture.size1, size2: @picture.size2, size3: @picture.size3 }
    assert_redirected_to picture_path(assigns(:picture))
  end

  test "should destroy picture" do
    assert_difference('Picture.count', -1) do
      delete :destroy, id: @picture
    end

    assert_redirected_to pictures_path
  end
end
