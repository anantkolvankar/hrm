require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { address2: @company.address2, address: @company.address, city: @company.city, employee_strength: @company.employee_strength, name: @company.name, phone: @company.phone, postal_code: @company.postal_code, revenue: @company.revenue, state: @company.state, website: @company.website }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { address2: @company.address2, address: @company.address, city: @company.city, employee_strength: @company.employee_strength, name: @company.name, phone: @company.phone, postal_code: @company.postal_code, revenue: @company.revenue, state: @company.state, website: @company.website }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
