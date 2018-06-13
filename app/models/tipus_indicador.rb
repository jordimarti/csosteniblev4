class TipusIndicador < ApplicationRecord

	has_many :indicadors
	has_many :indicadors_usuari

end
