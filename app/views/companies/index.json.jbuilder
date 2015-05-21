json.array!(@companies) do |company|
  json.extract! company, :id, :website, :name, :phone, :address, :address2, :city, :state, :postal_code, :employee_strength, :revenue
  json.url company_url(company, format: :json)
end
