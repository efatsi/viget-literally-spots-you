class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :status
      t.attachment :image

      t.timestamps
    end
  end
end
