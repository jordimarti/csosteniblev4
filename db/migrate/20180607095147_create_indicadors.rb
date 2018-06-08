class CreateIndicadors < ActiveRecord::Migration[5.2]
  def change
    create_table :indicadors do |t|
      t.integer :tipus_indicador_id
      t.integer :producte_dapcons_id
      t.string :etapa
      t.float :valor

      t.timestamps
    end
  end
end
