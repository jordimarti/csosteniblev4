json.extract! mk_product, :id, :user_id, :nom, :descripcio, :categoria, :adreca, :codi_postal, :municipi, :latitud, :longitud, :preu, :visible, :venut, :aprovat, :pes, :unitats, :enviament, :adreca_oculta, :created_at, :updated_at
json.url mk_product_url(mk_product, format: :json)
