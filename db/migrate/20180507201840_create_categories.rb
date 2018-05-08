class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :nom_ca
      t.string :nom_es
      t.string :nom_en

      t.timestamps
    end
  end
end
