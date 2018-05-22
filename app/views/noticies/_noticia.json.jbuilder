json.extract! noticia, :id, :titol_ca, :resum_ca, :permalink_ca, :contingut_ca, :titol_es, :resum_es, :permalink_es, :contingut_es, :titol_en, :resum_en, :permalink_en, :contingut_en, :data, :dapc, :image_data, :created_at, :updated_at
json.url noticia_url(noticia, format: :json)
