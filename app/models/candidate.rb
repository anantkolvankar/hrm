class Candidate < ActiveRecord::Base
  belongs_to :current_company,
                :class_name => "Company",
                :foreign_key  => "current_company_id"

  belongs_to :current_branch,
                :class_name => "Branch",
                :foreign_key  => "current_branch_id"

  belongs_to :industry
  belongs_to :current_Level,
                :class_name => "Level",
                :foreign_key  => "current_Level_id"
  belongs_to :previous_company,
                :class_name => "Company",
                :foreign_key  => "previous_company_id"
  belongs_to :previous_branch,
                :class_name => "Branch",
                :foreign_key  => "previous_branch_id"
  belongs_to :previous_industry,
                :class_name => "Industry",
                :foreign_key  => "previous_industry_id"
  belongs_to :previous_level,
                :class_name => "Level",
                :foreign_key  => "previous_level_id"

end
