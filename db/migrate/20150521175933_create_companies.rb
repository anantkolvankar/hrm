class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :website
      t.string :name
      t.string :phone
      t.text :address
      t.text :address2
      t.string :city
      t.string :state
      t.integer :postal_code
      t.integer :employee_strength
      t.string :revenue

      t.timestamps
    end
  end
end
