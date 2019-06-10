class MkProduct < ApplicationRecord

	belongs_to :user
	has_many :mk_documents, dependent: :destroy, inverse_of: :mk_product
	accepts_nested_attributes_for :mk_documents, allow_destroy: true, reject_if: ->(attrs) { attrs['nom'].blank? }
	has_many :mk_imatges, dependent: :destroy, inverse_of: :mk_product
	accepts_nested_attributes_for :mk_imatges, allow_destroy: true

end
