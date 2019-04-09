class CreateMkUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :mk_users do |t|
      t.integer :user_id
      t.string :nom
      t.string :cognoms
      t.string :adreca
      t.string :codi_postal
      t.string :municipi
      t.string :email
      t.string :telefon
      t.string :web
      t.boolean :mostrar_adreca
      t.boolean :mostrar_email
      t.boolean :mostrar_telefon
      t.boolean :mostrar_web

      t.timestamps
    end
  end
end
