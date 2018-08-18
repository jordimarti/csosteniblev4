class CreateDocumentDapcons < ActiveRecord::Migration[5.2]
  def change
    create_table :document_dapcons do |t|
      t.integer :producte_dapcons_id
      t.string :nom_ca
      t.string :nom_es
      t.string :nom_en
      t.string :idioma
      t.string :link

      t.timestamps
    end
  end
end
