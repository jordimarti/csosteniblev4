class CreateEcoetiquetes < ActiveRecord::Migration[5.2]
  def change
    create_table :ecoetiquetes do |t|
      t.string :nom_ca
      t.string :nom_es
      t.string :nom_en

      t.timestamps
    end
  end
end
