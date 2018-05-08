class DocumentProducte < ApplicationRecord

	belongs_to :producte

	has_one_attached :arxiu_document

end
