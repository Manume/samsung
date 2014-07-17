class AddPhotoToCarriers < ActiveRecord::Migration
  def change
    add_column :carriers, :photo, :string
  end
end
