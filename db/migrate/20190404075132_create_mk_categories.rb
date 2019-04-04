class CreateMkCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :mk_categories do |t|
      t.integer :user_id
      t.boolean :valida
      t.string :nom_ca
      t.string :nom_es
      t.string :nom_en
      t.integer :pare

      t.timestamps
    end
  end
end
