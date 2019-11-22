class MkImatge < ApplicationRecord

	belongs_to :mk_product
	has_one_attached :mk_product_imatge


	def miniatura_imatge
		return self.mk_product_imatge.variant(resize: '200x200', auto_orient: true).processed
	end

	def petita_imatge
		return self.mk_product_imatge.variant(resize: '300x300', auto_orient: true).processed
	end

	def standard_imatge
		return self.mk_product_imatge.variant(resize: '800x800', auto_orient: true).processed
	end

end
