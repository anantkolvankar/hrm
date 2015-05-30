class HomeController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def csv_upload
  
  end

  def import_csv
   Candidate.from_csv(params[:candidate][:file], @current_user)
   respond_to do |format|
    format.html { redirect_to root_path, :notice => 'Students successfully imported' }
   end
  end

  def dashboard
    puts "dashboard"
     @candidates = Candidate.all
  end
end
