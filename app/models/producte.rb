class Producte < ApplicationRecord

	has_many :ecoetiqueta_productes, dependent: :destroy, inverse_of: :producte
	accepts_nested_attributes_for :ecoetiqueta_productes, allow_destroy: true, reject_if: ->(attrs) { attrs['ecoetiqueta_id'].blank? }
	
	has_many :document_productes

	has_one_attached :imatge_producte

end
