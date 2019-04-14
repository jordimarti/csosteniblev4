class AddProductToMkMissatges < ActiveRecord::Migration[5.2]
  def change
  	add_column :mk_missatges, :mk_product_id, :integer
  end
end
