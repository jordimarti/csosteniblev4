class AddPrimeraVegadaToMkUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :mk_users, :app_primera_vegada, :boolean, default: true
  end
end
