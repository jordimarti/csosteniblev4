json.extract! mk_imatge, :id, :user_id, :mk_product_id, :descripcio, :created_at, :updated_at
json.url mk_imatge_url(mk_imatge, format: :json)
