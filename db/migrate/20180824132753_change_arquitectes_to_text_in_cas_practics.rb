class ChangeArquitectesToTextInCasPractics < ActiveRecord::Migration[5.2]
  def change
  	change_column :cas_practics, :arquitectes_ca, :text
  	change_column :cas_practics, :arquitectes_es, :text
  	change_column :cas_practics, :arquitectes_en, :text
  end
end
