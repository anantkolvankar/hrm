class AddPointToCorporates < ActiveRecord::Migration
  def change
    add_column :corporates, :point, :integer, :default => 20
  end
end
