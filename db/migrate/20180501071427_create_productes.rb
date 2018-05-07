class CreateProductes < ActiveRecord::Migration[5.2]
  def change
    create_table :productes do |t|
      t.string :nom_ca
      t.string :nom_es
      t.string :nom_en
      t.string :descripcio_ca
      t.string :descripcio_es
      t.string :descripcio_en
      t.text :caracteristiques_ca
      t.text :caracteristiques_es
      t.text :caracteristiques_en
      t.text :aplicacio_ca
      t.text :aplicacio_es
      t.text :aplicacio_en
      t.text :disponibilitat_ca
      t.text :disponibilitat_es
      t.text :disponibilitat_en
      t.text :destacats_ca
      t.text :destacats_es
      t.text :destacats_en
      t.integer :valoracio
      t.string :ambit
      t.boolean :visible

      t.timestamps
    end
  end
end
