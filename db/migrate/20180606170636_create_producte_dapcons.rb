class CreateProducteDapcons < ActiveRecord::Migration[5.2]
  def change
    create_table :producte_dapcons do |t|
      t.string :nom_ca
      t.string :nom_es
      t.string :nom_en
      t.text :descripcio_ca
      t.text :descripcio_es
      t.text :descripcio_en
      t.string :identificador
      t.string :rcp_ca
      t.string :rcp_es
      t.string :rcp_en
      t.date :validesa_inici
      t.date :validesa_fi
      t.string :empresa
      t.string :categoria_indicadors

      t.timestamps
    end
  end
end
