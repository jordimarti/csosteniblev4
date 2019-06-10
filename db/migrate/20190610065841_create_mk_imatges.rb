class CreateMkImatges < ActiveRecord::Migration[5.2]
  def change
    create_table :mk_imatges do |t|
      t.integer :user_id
      t.integer :mk_product_id
      t.string :descripcio

      t.timestamps
    end
  end
end
