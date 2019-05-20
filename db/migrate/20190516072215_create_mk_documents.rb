class CreateMkDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :mk_documents do |t|
      t.integer :user_id
      t.integer :mk_product_id
      t.string :nom

      t.timestamps
    end
  end
end
