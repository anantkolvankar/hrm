class ChangeTypeToCandidateType < ActiveRecord::Migration
  def change
  	rename_column :candidates, :type, :candidate_type
  end
end
