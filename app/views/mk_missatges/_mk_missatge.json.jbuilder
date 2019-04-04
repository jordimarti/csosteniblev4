json.extract! mk_missatge, :id, :user_id, :destinatari, :missatge, :created_at, :updated_at
json.url mk_missatge_url(mk_missatge, format: :json)
