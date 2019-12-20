class AddUserToProducteDapcons < ActiveRecord::Migration[5.2]
  def change
    add_column :producte_dapcons, :user_id, :integer
  end
end
