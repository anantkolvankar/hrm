class AddPointToConsultant < ActiveRecord::Migration
  def change
    add_column :consultants, :point, :integer, :default => 20
  end
end
