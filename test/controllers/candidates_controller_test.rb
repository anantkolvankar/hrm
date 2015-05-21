require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post :create, candidate: { address2: @candidate.address2, address: @candidate.address, city: @candidate.city, country: @candidate.country, current_Level_id: @candidate.current_Level_id, current_branch_id: @candidate.current_branch_id, current_company_id: @candidate.current_company_id, current_package: @candidate.current_package, email: @candidate.email, first_name: @candidate.first_name, industry_id: @candidate.industry_id, job_title: @candidate.job_title, last_name: @candidate.last_name, linked_in: @candidate.linked_in, phone: @candidate.phone, postal_code: @candidate.postal_code, previous_branch_id: @candidate.previous_branch_id, previous_company_id: @candidate.previous_company_id, previous_industry_id: @candidate.previous_industry_id, previous_job_title: @candidate.previous_job_title, previous_level_id: @candidate.previous_level_id, previous_package: @candidate.previous_package, proof: @candidate.proof, reason: @candidate.reason, resume: @candidate.resume, state: @candidate.state, type: @candidate.type }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should show candidate" do
    get :show, id: @candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "should update candidate" do
    patch :update, id: @candidate, candidate: { address2: @candidate.address2, address: @candidate.address, city: @candidate.city, country: @candidate.country, current_Level_id: @candidate.current_Level_id, current_branch_id: @candidate.current_branch_id, current_company_id: @candidate.current_company_id, current_package: @candidate.current_package, email: @candidate.email, first_name: @candidate.first_name, industry_id: @candidate.industry_id, job_title: @candidate.job_title, last_name: @candidate.last_name, linked_in: @candidate.linked_in, phone: @candidate.phone, postal_code: @candidate.postal_code, previous_branch_id: @candidate.previous_branch_id, previous_company_id: @candidate.previous_company_id, previous_industry_id: @candidate.previous_industry_id, previous_job_title: @candidate.previous_job_title, previous_level_id: @candidate.previous_level_id, previous_package: @candidate.previous_package, proof: @candidate.proof, reason: @candidate.reason, resume: @candidate.resume, state: @candidate.state, type: @candidate.type }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
