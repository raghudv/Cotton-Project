require 'test_helper'

class AgenciesControllerTest < ActionController::TestCase
  setup do
    @agency = agencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agency" do
    assert_difference('Agency.count') do
      post :create, agency: { bags_received: @agency.bags_received, bags_received_empty: @agency.bags_received_empty, concession_id: @agency.concession_id, input_delivered: @agency.input_delivered, input_non_recovery: @agency.input_non_recovery, input_recovered: @agency.input_recovered, jute_bags_given: @agency.jute_bags_given, name: @agency.name, quantity_planned: @agency.quantity_planned, quantity_procured: @agency.quantity_procured, transport_expense: @agency.transport_expense, weight_loss: @agency.weight_loss }
    end

    assert_redirected_to agency_path(assigns(:agency))
  end

  test "should show agency" do
    get :show, id: @agency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agency
    assert_response :success
  end

  test "should update agency" do
    put :update, id: @agency, agency: { bags_received: @agency.bags_received, bags_received_empty: @agency.bags_received_empty, concession_id: @agency.concession_id, input_delivered: @agency.input_delivered, input_non_recovery: @agency.input_non_recovery, input_recovered: @agency.input_recovered, jute_bags_given: @agency.jute_bags_given, name: @agency.name, quantity_planned: @agency.quantity_planned, quantity_procured: @agency.quantity_procured, transport_expense: @agency.transport_expense, weight_loss: @agency.weight_loss }
    assert_redirected_to agency_path(assigns(:agency))
  end

  test "should destroy agency" do
    assert_difference('Agency.count', -1) do
      delete :destroy, id: @agency
    end

    assert_redirected_to agencies_path
  end
end
