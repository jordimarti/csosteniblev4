class CreateTipusIndicadors < ActiveRecord::Migration[5.2]
  def change
    create_table :tipus_indicadors do |t|
      t.string :nom_ca
      t.string :nom_es
      t.string :nom_en
      t.string :unitats

      t.timestamps
    end
  end
end
