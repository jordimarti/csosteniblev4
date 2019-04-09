class MkUser < ApplicationRecord

	has_one_attached :mk_image_user
	belongs_to :user

end
