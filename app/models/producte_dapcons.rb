class ProducteDapcons < ApplicationRecord

	has_many :indicadors, dependent: :destroy, inverse_of: :producte_dapcons
	accepts_nested_attributes_for :indicadors, allow_destroy: true, reject_if: ->(attrs) { attrs['tipus_indicador_id'].blank? }

end
