class CreateDocumentProductes < ActiveRecord::Migration[5.2]
  def change
    create_table :document_productes do |t|
      t.integer :producte_id
      t.string :nom_ca
      t.string :nom_es
      t.string :nom_en

      t.timestamps
    end
  end
end
