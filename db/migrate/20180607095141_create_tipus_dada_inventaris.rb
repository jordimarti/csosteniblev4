class CreateTipusDadaInventaris < ActiveRecord::Migration[5.2]
  def change
    create_table :tipus_dada_inventaris do |t|
      t.string :nom_ca
      t.string :nom_es
      t.string :nom_en
      t.string :unitats

      t.timestamps
    end
  end
end
