class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :country
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
