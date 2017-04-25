require 'test_helper'

class TestmesControllerTest < ActionController::TestCase
  setup do
    @testme = testmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testme" do
    assert_difference('Testme.count') do
      post :create, testme: {  }
    end

    assert_redirected_to testme_path(assigns(:testme))
  end

  test "should show testme" do
    get :show, id: @testme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testme
    assert_response :success
  end

  test "should update testme" do
    patch :update, id: @testme, testme: {  }
    assert_redirected_to testme_path(assigns(:testme))
  end

  test "should destroy testme" do
    assert_difference('Testme.count', -1) do
      delete :destroy, id: @testme
    end

    assert_redirected_to testmes_path
  end
end
