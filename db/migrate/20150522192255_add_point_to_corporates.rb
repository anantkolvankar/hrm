class AddPointToCorporates < ActiveRecord::Migration
  def change
    add_column :corporates, :point, :integer
  end
end
