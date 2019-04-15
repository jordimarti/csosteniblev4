class MkProduct < ApplicationRecord

	has_one_attached :mk_image_product
	belongs_to :user

end
