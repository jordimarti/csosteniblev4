class ProducteDapconsUsuari < ApplicationRecord

	belongs_to :user
	has_many :indicador_usuaris, dependent: :destroy, inverse_of: :producte_dapcons_usuari
	accepts_nested_attributes_for :indicador_usuaris, allow_destroy: true, reject_if: ->(attrs) { attrs['tipus_indicador_id'].blank? }

end
