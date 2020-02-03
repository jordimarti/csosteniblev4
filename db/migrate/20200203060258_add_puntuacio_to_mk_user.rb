class AddPuntuacioToMkUser < ActiveRecord::Migration[5.2]
  def change
    add_column :mk_users, :primer_us, :boolean
    add_column :mk_users, :puntuacio, :decimal
  end
end
