class AddUniqueIndexToMailContest < ActiveRecord::Migration[7.1]
  def change
    add_index :contests, :email, unique: true
  end
end
