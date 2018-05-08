class Producte < ApplicationRecord

	has_many :categoria_productes, dependent: :destroy, inverse_of: :producte
	accepts_nested_attributes_for :categoria_productes, allow_destroy: true, reject_if: ->(attrs) { attrs['categoria_id'].blank? }

	has_many :ecoetiqueta_productes, dependent: :destroy, inverse_of: :producte
	accepts_nested_attributes_for :ecoetiqueta_productes, allow_destroy: true, reject_if: ->(attrs) { attrs['ecoetiqueta_id'].blank? }
	
	has_many :document_productes, dependent: :destroy, inverse_of: :producte
	accepts_nested_attributes_for :document_productes, allow_destroy: true, reject_if: ->(attrs) { attrs['nom_ca'].blank? }

	has_one_attached :imatge_producte

end
