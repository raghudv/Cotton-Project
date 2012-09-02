require 'test_helper'

class ConcessionsControllerTest < ActionController::TestCase
  setup do
    @concession = concessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:concessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create concession" do
    assert_difference('Concession.count') do
      post :create, concession: { bags_received: @concession.bags_received, bags_received_empty: @concession.bags_received_empty, concession_id: @concession.concession_id, input_delivered: @concession.input_delivered, input_non_recovery: @concession.input_non_recovery, input_recovered: @concession.input_recovered, jute_bags_given: @concession.jute_bags_given, name: @concession.name, quantity_planned: @concession.quantity_planned, quantity_procured: @concession.quantity_procured, transport_expense: @concession.transport_expense, weight_loss: @concession.weight_loss }
    end

    assert_redirected_to concession_path(assigns(:concession))
  end

  test "should show concession" do
    get :show, id: @concession
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @concession
    assert_response :success
  end

  test "should update concession" do
    put :update, id: @concession, concession: { bags_received: @concession.bags_received, bags_received_empty: @concession.bags_received_empty, concession_id: @concession.concession_id, input_delivered: @concession.input_delivered, input_non_recovery: @concession.input_non_recovery, input_recovered: @concession.input_recovered, jute_bags_given: @concession.jute_bags_given, name: @concession.name, quantity_planned: @concession.quantity_planned, quantity_procured: @concession.quantity_procured, transport_expense: @concession.transport_expense, weight_loss: @concession.weight_loss }
    assert_redirected_to concession_path(assigns(:concession))
  end

  test "should destroy concession" do
    assert_difference('Concession.count', -1) do
      delete :destroy, id: @concession
    end

    assert_redirected_to concessions_path
  end
end
