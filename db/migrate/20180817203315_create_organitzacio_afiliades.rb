class CreateOrganitzacioAfiliades < ActiveRecord::Migration[5.2]
  def change
    create_table :organitzacio_afiliades do |t|
      t.string :numero_membre
      t.string :nom
      t.text :dades
      t.string :link_iso
      t.string :tipus

      t.timestamps
    end
  end
end
