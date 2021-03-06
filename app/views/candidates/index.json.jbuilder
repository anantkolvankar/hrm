json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :first_name, :last_name, :email, :phone, :address, :address2, :city, :postal_code, :state, :country, :current_company_id, :current_branch_id, :industry_id, :job_title, :current_Level_id, :current_package, :previous_company_id, :previous_branch_id, :previous_industry_id, :previous_job_title, :previous_level_id, :previous_package, :reason, :proof, :type, :linked_in, :resume
  json.url candidate_url(candidate, format: :json)
end
