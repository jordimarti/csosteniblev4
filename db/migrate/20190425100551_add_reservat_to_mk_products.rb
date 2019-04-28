class AddReservatToMkProducts < ActiveRecord::Migration[5.2]
  def change
  	add_column :mk_products, :reservat, :boolean
  	add_column :mk_products, :reservat_usuari, :integer
  end
end
