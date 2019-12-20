class AddUserToInteraccions < ActiveRecord::Migration[5.2]
  def change
    add_column :interaccions, :user_id, :integer
    add_column :interaccions, :user_email, :string
    add_column :interaccions, :user_first_name, :string
    add_column :interaccions, :user_last_name, :string
    add_column :interaccions, :producte_dapcons_id, :integer
    add_column :interaccions, :producte_dapcons_user_id, :integer
  end
end
