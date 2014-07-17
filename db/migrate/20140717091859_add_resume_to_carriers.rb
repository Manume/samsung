class AddResumeToCarriers < ActiveRecord::Migration
  def change
    add_column :carriers, :resume, :string
  end
end
