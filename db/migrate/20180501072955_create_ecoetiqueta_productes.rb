class CreateEcoetiquetaProductes < ActiveRecord::Migration[5.2]
  def change
    create_table :ecoetiqueta_productes do |t|
      t.integer :producte_id
      t.integer :ecoetiqueta_id

      t.timestamps
    end
  end
end
