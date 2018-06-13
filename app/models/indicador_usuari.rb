class IndicadorUsuari < ApplicationRecord

	belongs_to :producte_dapcons_usuari
	belongs_to :tipus_indicador

end
