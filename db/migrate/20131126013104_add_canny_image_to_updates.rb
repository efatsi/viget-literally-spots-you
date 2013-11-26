class AddCannyImageToUpdates < ActiveRecord::Migration
  def change
    add_attachment :updates, :canny_image
  end
end
