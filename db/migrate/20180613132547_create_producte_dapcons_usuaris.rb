class CreateProducteDapconsUsuaris < ActiveRecord::Migration[5.2]
  def change
    create_table :producte_dapcons_usuaris do |t|
      t.string :nom
      t.string :empresa
      t.text :descripcio
      t.text :unitat_declarada

      t.timestamps
    end
  end
end
