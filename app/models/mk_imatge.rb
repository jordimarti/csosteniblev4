class MkImatge < ApplicationRecord

	belongs_to :mk_product
	has_one_attached :mk_product_imatge

end
