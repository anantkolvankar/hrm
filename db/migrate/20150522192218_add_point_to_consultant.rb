class AddPointToConsultant < ActiveRecord::Migration
  def change
    add_column :consultants, :point, :integer
  end
end
