json.extract! document_producte, :id, :producte_id, :nom_ca, :nom_es, :nom_en, :created_at, :updated_at
json.url document_producte_url(document_producte, format: :json)
