class CreateCasPractics < ActiveRecord::Migration[5.2]
  def change
    create_table :cas_practics do |t|
      t.string :titol_ca
      t.text :resum_ca
      t.string :permalink_ca
      t.text :descripcio_ca
      t.text :emplacament_ca
      t.text :arquitectura_ca
      t.text :materials_ca
      t.text :energia_ca
      t.text :aigua_ca
      t.text :certificacions_ca
      t.string :arquitectes_ca
      t.string :emplacament_ca
      t.string :any_construccio_ca
      t.string :us_edifici_ca
      t.string :tipus_promocio_ca
      t.string :titol_es
      t.text :resum_es
      t.string :permalink_es
      t.text :descripcio_es
      t.text :emplacament_es
      t.text :arquitectura_es
      t.text :materials_es
      t.text :energia_es
      t.text :aigua_es
      t.text :certificacions_es
      t.string :arquitectes_es
      t.string :emplacament_es
      t.string :any_construccio_es
      t.string :us_edifici_es
      t.string :tipus_promocio_es
      t.string :titol_en
      t.text :resum_en
      t.string :permalink_en
      t.text :descripcio_en
      t.text :emplacament_en
      t.text :arquitectura_en
      t.text :materials_en
      t.text :energia_en
      t.text :aigua_en
      t.text :certificacions_en
      t.string :arquitectes_en
      t.string :emplacament_en
      t.string :any_construccio_en
      t.string :us_edifici_en
      t.string :tipus_promocio_en

      t.timestamps
    end
  end
end
