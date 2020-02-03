class CreateMkPuntuacions < ActiveRecord::Migration[5.2]
  def change
    create_table :mk_puntuacions do |t|
      t.integer :user_id
      t.integer :mk_user_id
      t.decimal :puntuacio

      t.timestamps
    end
  end
end
