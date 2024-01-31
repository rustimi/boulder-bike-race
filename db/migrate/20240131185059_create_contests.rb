class CreateContests < ActiveRecord::Migration[7.1]
  def change
    create_table :contests do |t|
      t.string :fname, limit: 25
      t.string :lname, limit: 25
      t.string :email, limit: 25
      t.string :slogan, limit: 50

      t.timestamps
    end
  end
end
