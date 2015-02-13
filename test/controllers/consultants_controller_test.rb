require 'test_helper'

class ConsultantsControllerTest < ActionController::TestCase
  setup do
    @consultant = consultants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultant" do
    assert_difference('Consultant.count') do
      post :create, consultant: { address: @consultant.address, description: @consultant.description, fax: @consultant.fax, firstname: @consultant.firstname, lat: @consultant.lat, lng: @consultant.lng, phone: @consultant.phone, postcode: @consultant.postcode, state: @consultant.state, suburb: @consultant.suburb, surname: @consultant.surname, title: @consultant.title, type: @consultant.type, url: @consultant.url }
    end

    assert_redirected_to consultant_path(assigns(:consultant))
  end

  test "should show consultant" do
    get :show, id: @consultant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultant
    assert_response :success
  end

  test "should update consultant" do
    patch :update, id: @consultant, consultant: { address: @consultant.address, description: @consultant.description, fax: @consultant.fax, firstname: @consultant.firstname, lat: @consultant.lat, lng: @consultant.lng, phone: @consultant.phone, postcode: @consultant.postcode, state: @consultant.state, suburb: @consultant.suburb, surname: @consultant.surname, title: @consultant.title, type: @consultant.type, url: @consultant.url }
    assert_redirected_to consultant_path(assigns(:consultant))
  end

  test "should destroy consultant" do
    assert_difference('Consultant.count', -1) do
      delete :destroy, id: @consultant
    end

    assert_redirected_to consultants_path
  end
end
