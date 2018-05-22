class CreateNoticies < ActiveRecord::Migration[5.2]
  def change
    create_table :noticies do |t|
      t.string :titol_ca
      t.text :resum_ca
      t.string :permalink_ca
      t.text :contingut_ca
      t.string :titol_es
      t.text :resum_es
      t.string :permalink_es
      t.text :contingut_es
      t.string :titol_en
      t.text :resum_en
      t.string :permalink_en
      t.text :contingut_en
      t.timestamp :data
      t.boolean :dapc
      t.text :image_data

      t.timestamps
    end
  end
end
