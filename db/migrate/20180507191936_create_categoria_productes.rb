class CreateCategoriaProductes < ActiveRecord::Migration[5.2]
  def change
    create_table :categoria_productes do |t|
      t.integer :producte_id
      t.integer :categoria_id

      t.timestamps
    end
  end
end
