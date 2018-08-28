class CasPractic < ApplicationRecord

	has_one_attached :imatge_cas_principal
	has_one_attached :imatge_cas_1
	has_one_attached :imatge_cas_2
	has_one_attached :imatge_cas_3
	has_one_attached :imatge_cas_4

	belongs_to :user

end
