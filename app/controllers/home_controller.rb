class HomeController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def csv_upload
  
  end

  def import_csv
   Candidate.from_csv(params[:candidate][:file], @current_user)
   respond_to do |format|
    format.html { redirect_to dashboard_path, :notice => 'Students successfully imported' }
   end
  end

  def dashboard
    puts "dashboard"
    if params[:search]
      @candidates = Candidate.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    else
     @candidates = Candidate.paginate(:page => params[:page], :per_page => 5)
   end
end
end
