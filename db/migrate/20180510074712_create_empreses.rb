class CreateEmpreses < ActiveRecord::Migration[5.2]
  def change
    create_table :empreses do |t|
      t.string :nom
      t.string :adreca
      t.integer :codi_postal
      t.string :poblacio
      t.string :telefon
      t.string :email
      t.text :web
      t.text :altres

      t.timestamps
    end
  end
end
