class AddTextImatgeCasPrincipalToCasPractic < ActiveRecord::Migration[5.2]
  def change
    add_column :cas_practics, :text_imatge_cas_principal_ca, :text
    add_column :cas_practics, :text_imatge_cas_1_ca, :text
    add_column :cas_practics, :text_imatge_cas_2_ca, :text
    add_column :cas_practics, :text_imatge_cas_3_ca, :text
    add_column :cas_practics, :text_imatge_cas_4_ca, :text
    add_column :cas_practics, :text_imatge_cas_principal_es, :text
    add_column :cas_practics, :text_imatge_cas_1_es, :text
    add_column :cas_practics, :text_imatge_cas_2_es, :text
    add_column :cas_practics, :text_imatge_cas_3_es, :text
    add_column :cas_practics, :text_imatge_cas_4_es, :text
    add_column :cas_practics, :text_imatge_cas_principal_en, :text
    add_column :cas_practics, :text_imatge_cas_1_en, :text
    add_column :cas_practics, :text_imatge_cas_2_en, :text
    add_column :cas_practics, :text_imatge_cas_3_en, :text
    add_column :cas_practics, :text_imatge_cas_4_en, :text
  end
end
