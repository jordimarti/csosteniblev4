class AddUserIdToCasPractics < ActiveRecord::Migration[5.2]
  def change
    add_column :cas_practics, :user_id, :integer
  end
end
