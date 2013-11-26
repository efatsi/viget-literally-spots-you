class AddPixelCountToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :pixel_count, :integer
  end
end
