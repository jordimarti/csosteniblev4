class AddEmpresaIdToProductes < ActiveRecord::Migration[5.2]
  def change
  	add_column :productes, :empresa_id, :integer
  end
end
