class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @candidates = Candidate.all
    respond_with(@candidates)
  end

  def show
    #binding.pry
    if(@candidate.reduce_points_of_profile_viewer @current_user)

      respond_with(@candidate)
    else
      flash[:notice] = "You don't have enough points to view this candidate"
      redirect_to dashboard_path
    end
  end

  def new
    @candidate = Candidate.new
    respond_with(@candidate)
  end

  def edit
  end

  def create
    @candidate = Candidate.new(candidate_params)
    @candidate.save
    respond_with(@candidate)
  end

  def update
    @candidate.update(candidate_params)
    respond_with(@candidate)
  end

  def destroy
    @candidate.destroy
    respond_with(@candidate)
  end

  private
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end

    def candidate_params
      params.require(:candidate).permit(:first_name, :last_name, :email, :phone, :address, :address2, :city, :postal_code, :state, :country, :current_company_id, :current_branch_id, :industry_id, :job_title, :current_Level_id, :current_package, :previous_company_id, :previous_branch_id, :previous_industry_id, :previous_job_title, :previous_level_id, :previous_package, :reason, :proof, :type, :linked_in, :resume)
    end
end
