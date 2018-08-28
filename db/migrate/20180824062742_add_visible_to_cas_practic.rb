class AddVisibleToCasPractic < ActiveRecord::Migration[5.2]
  def change
    add_column :cas_practics, :visible, :boolean
  end
end
