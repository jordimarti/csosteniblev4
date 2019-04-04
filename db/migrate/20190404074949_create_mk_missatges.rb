class CreateMkMissatges < ActiveRecord::Migration[5.2]
  def change
    create_table :mk_missatges do |t|
      t.integer :user_id
      t.string :destinatari
      t.text :missatge

      t.timestamps
    end
  end
end
