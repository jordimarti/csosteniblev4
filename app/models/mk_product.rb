class MkProduct < ApplicationRecord

	has_one_attached :mk_image_product
	belongs_to :user
	has_many :mk_documents, dependent: :destroy, inverse_of: :mk_product
	accepts_nested_attributes_for :mk_documents, allow_destroy: true, reject_if: ->(attrs) { attrs['nom'].blank? }

end
