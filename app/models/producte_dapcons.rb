class ProducteDapcons < ApplicationRecord

	has_many :document_dapcons
	has_many :indicadors, dependent: :destroy, inverse_of: :producte_dapcons
	accepts_nested_attributes_for :indicadors, allow_destroy: true, reject_if: ->(attrs) { attrs['tipus_indicador_id'].blank? }
	has_one_attached :imatge_producte_dapcons

end
