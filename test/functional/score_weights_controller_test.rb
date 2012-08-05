require 'test_helper'

class ScoreWeightsControllerTest < ActionController::TestCase
  setup do
    @score_weight = score_weights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:score_weights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create score_weight" do
    assert_difference('ScoreWeight.count') do
      post :create, score_weight: {  }
    end

    assert_redirected_to score_weight_path(assigns(:score_weight))
  end

  test "should show score_weight" do
    get :show, id: @score_weight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @score_weight
    assert_response :success
  end

  test "should update score_weight" do
    put :update, id: @score_weight, score_weight: {  }
    assert_redirected_to score_weight_path(assigns(:score_weight))
  end

  test "should destroy score_weight" do
    assert_difference('ScoreWeight.count', -1) do
      delete :destroy, id: @score_weight
    end

    assert_redirected_to score_weights_path
  end
end
