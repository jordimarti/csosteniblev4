json.extract! mk_document, :id, :user_id, :mk_product_id, :nom, :created_at, :updated_at
json.url mk_document_url(mk_document, format: :json)
