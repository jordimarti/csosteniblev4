class AddUnitatDeclaradaToProducteDapcons < ActiveRecord::Migration[5.2]
  def change
    add_column :producte_dapcons, :unitat_declarada_ca, :text
    add_column :producte_dapcons, :unitat_declarada_es, :text
    add_column :producte_dapcons, :unitat_declarada_en, :text
  end
end
