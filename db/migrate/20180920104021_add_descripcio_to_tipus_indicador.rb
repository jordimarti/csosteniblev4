class AddDescripcioToTipusIndicador < ActiveRecord::Migration[5.2]
  def change
  	add_column :tipus_indicadors, :descripcio_ca, :text
  	add_column :tipus_indicadors, :descripcio_es, :text
  	add_column :tipus_indicadors, :descripcio_en, :text
  end
end
