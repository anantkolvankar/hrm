class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.text :address
      t.text :address2
      t.string :city
      t.integer :postal_code
      t.string :state
      t.string :country
      t.references :current_company, index: true
      t.references :current_branch, index: true
      t.references :industry, index: true
      t.string :job_title
      t.references :current_Level, index: true
      t.string :current_package
      t.references :previous_company, index: true
      t.references :previous_branch, index: true
      t.references :previous_industry, index: true
      t.string :previous_job_title
      t.references :previous_level, index: true
      t.string :previous_package
      t.text :reason
      t.string :proof
      t.string :type
      t.string :linked_in
      t.string :resume
      t.references :uploaded, polymorphic: true, index: true
      
      t.timestamps
    end
  end
end
