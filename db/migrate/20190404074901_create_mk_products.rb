class CreateMkProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :mk_products do |t|
      t.integer :user_id
      t.string :nom
      t.text :descripcio
      t.string :categoria
      t.string :adreca
      t.string :codi_postal
      t.string :municipi
      t.decimal :latitud
      t.decimal :longitud
      t.integer :preu
      t.boolean :visible
      t.boolean :venut
      t.boolean :aprovat
      t.decimal :pes
      t.integer :unitats
      t.string :enviament
      t.boolean :adreca_oculta

      t.timestamps
    end
  end
end
