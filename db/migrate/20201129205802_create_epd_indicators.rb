class CreateEpdIndicators < ActiveRecord::Migration[5.2]
  def change
    create_table :epd_indicators do |t|
      t.uuid :epd_id
      t.string :indicator
      t.string :unit
      t.float :a1_a3
      t.float :a4
      t.float :a5
      t.float :b1
      t.float :b2
      t.float :b3
      t.float :b4
      t.float :b5
      t.float :b6
      t.float :b7
      t.float :c1
      t.float :c2
      t.float :c3
      t.float :c4
      t.float :d

      t.timestamps
    end
  end
end
