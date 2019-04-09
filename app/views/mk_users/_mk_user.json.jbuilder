json.extract! mk_user, :id, :user_id, :nom, :cognoms, :adreca, :codi_postal, :municipi, :email, :telefon, :web, :mostrar_adreca, :mostrar_email, :mostrar_telefon, :mostrar_web, :created_at, :updated_at
json.url mk_user_url(mk_user, format: :json)
