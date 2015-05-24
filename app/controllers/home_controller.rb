class HomeController < ApplicationController
  def index
  end

  def csv_upload
  
  end

  def import_csv
   Candidate.from_csv(params[:candidate][:file], current_consultant)
   respond_to do |format|
    format.html { redirect_to root_path, :notice => 'Students successfully imported' }
   end
  end

end
