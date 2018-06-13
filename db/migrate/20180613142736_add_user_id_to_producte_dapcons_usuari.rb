class AddUserIdToProducteDapconsUsuari < ActiveRecord::Migration[5.2]
  def change
  	add_column :producte_dapcons_usuaris, :user_id, :integer
  end
end
