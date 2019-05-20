class AddMobileToMkUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :mk_users, :mobile, :boolean
  end
end
