class CreateInteraccions < ActiveRecord::Migration[5.2]
  def change
    create_table :interaccions do |t|
      t.string :nom
      t.string :categoria
      t.string :link

      t.timestamps
    end
  end
end
