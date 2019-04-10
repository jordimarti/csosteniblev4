class AddUnitatsToMkCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :mk_categories, :unitats, :string
    add_column :mk_categories, :ordre, :integer
  end
end
