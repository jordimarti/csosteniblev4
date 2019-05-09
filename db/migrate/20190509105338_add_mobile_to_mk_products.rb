class AddMobileToMkProducts < ActiveRecord::Migration[5.2]
  def change
  	add_column :mk_products, :mobile, :boolean
  end
end
