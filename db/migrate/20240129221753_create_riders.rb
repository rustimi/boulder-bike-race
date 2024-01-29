class CreateRiders < ActiveRecord::Migration[7.1]
  def change
    create_table :riders do |t|
      t.string :fname
      t.string :lname
      t.string :city_origin
      t.string :state_origin
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
