class CategoriaProducte < ApplicationRecord

	belongs_to :producte
	belongs_to :categoria

end
