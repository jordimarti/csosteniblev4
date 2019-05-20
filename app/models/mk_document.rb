class MkDocument < ApplicationRecord

	belongs_to :mk_product
	has_one_attached :document

end
