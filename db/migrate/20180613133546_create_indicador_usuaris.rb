class CreateIndicadorUsuaris < ActiveRecord::Migration[5.2]
  def change
    create_table :indicador_usuaris do |t|
      t.integer :tipus_indicador_id
      t.integer :producte_dapcons_usuari_id
      t.string :etapa
      t.float :valor

      t.timestamps
    end
  end
end
