Rails.application.routes.draw do
  resources :mk_puntuacions
  resources :mk_imatges
  resources :mk_documents
  resources :mk_users
  get 'marketcons/index'
  get 'marketcons', to: 'marketcons#index', as: :marketcons
  get 'marketcons/about'
  get 'marketcons/producte'
  get 'marketcons/perfil'
  get 'marketcons/venedor'
  get 'marketcons/nou_anunci'
  get 'marketcons/editar_anunci'
  get 'marketcons/comprova_unitats_categoria'
  get 'marketcons/categoria'
  get 'marketcons/missatges'
  get 'marketcons/aprovacions'
  get 'marketcons/publicats'
  get 'marketcons/usuaris'
  get 'marketcons/reserva_producte'
  get 'marketcons/anula_reserva_producte'
  get 'marketcons/producte_venut'
  get 'marketcons/producte_amagar'

  get 'mobile_marketcons/index'
  get 'mobile_marketcons', to: redirect('mobile_marketcons/index?distancia=tots&preu=tots&categoria=tots'), as: :mobile_marketcons
  get 'mobile_marketcons/about'
  get 'mobile_marketcons/producte'
  get 'mobile_marketcons/perfil'
  get 'mobile_marketcons/venedor'
  get 'mobile_marketcons/puntua_usuari'
  get 'mobile_marketcons/grava_puntuacio_usuari'
  get 'mobile_marketcons/nou_anunci'
  get 'mobile_marketcons/editar_anunci'
  get 'mobile_marketcons/comprova_unitats_categoria'
  get 'mobile_marketcons/categoria'
  get 'mobile_marketcons/missatges'
  get 'mobile_marketcons/aprovacions'
  get 'mobile_marketcons/publicats'
  get 'mobile_marketcons/usuari'
  get 'mobile_marketcons/usuaris'
  get 'mobile_marketcons/reserva_producte'
  get 'mobile_marketcons/anula_reserva_producte'
  get 'mobile_marketcons/producte_venut'
  get 'mobile_marketcons/producte_amagar'
  get 'mobile_marketcons/idioma'

  get 'mk_products/aprovar'
  get 'mk_products/desaprovar'
  resources :mk_categories
  resources :mk_missatges
  resources :mk_products
  resources :document_dapcons
  resources :organitzacio_afiliades
  get 'cas_practics/llistat'
  resources :cas_practics
  resources :indicador_usuaris
  resources :producte_dapcons_usuaris
  resources :indicadors
  resources :tipus_dada_inventaris
  resources :tipus_indicadors
  resources :producte_dapcons
  get 'dapcons', to: 'dapcons#index', :as => :dapcons
  get 'dapcons/index'
  get 'dapcons/que_son'
  get 'dapcons/utilitat'
  get 'dapcons/organitzacions_afiliades'
  get 'dapcons/productes_registrats'
  get 'dapcons/empreses_dapcons'
  get 'dapcons/documents_oficials'
  get 'dapcons/administradors'
  get 'dapcons/consell_assessor'
  get 'dapcons/panells_sectorials'
  get 'dapcons/eco_platform'
  get 'dapcons/entitats_colaboradores'
  get 'dapcons/verificadors'
  get 'dapcons/afiliacio'
  get 'dapcons/registrar_producte'
  get 'dapcons/contacte'
  get 'dapcons/comparador'
  get 'dapcons/llistat_productes'
  resources :videos
  get 'noticies/llistat'
  resources :noticies
  resources :empreses
  resources :categories
  resources :categoria_productes
  resources :ecoetiqueta_productes
  resources :ecoetiquetes
  resources :document_productes
  resources :productes
  devise_for :users
  
  get 'temes_clau/index'
  get 'temes_clau/marc_conceptual'
  get 'temes_clau/materials'
  get 'temes_clau/energia_passius'
  get 'temes_clau/energia_actius'
  get 'temes_clau/energia_renovables'
  get 'temes_clau/aigua'
  get 'temes_clau/residus'
  get 'temes_clau/salut'
  get 'temes_clau/economia_circular'


  get 'cas_practics/:cas_practics_id/edit_ca', to: 'cas_practics#edit_ca', :as => :cas_practics_edit_ca
  get 'cas_practics/:cas_practics_id/edit_es', to: 'cas_practics#edit_es', :as => :cas_practics_edit_es
  get 'cas_practics/:cas_practics_id/edit_en', to: 'cas_practics#edit_en', :as => :cas_practics_edit_en


  get 'home/index'
  get 'home/panel'
  get 'home/quisom'
  get 'home/avislegal'
  get 'home/cookies'
  get 'home/contacta'
  get 'home/logout'

  get 'index.php/ca/sistema_dapc/*other', to: redirect('dapcons/index?locale=ca')
  get 'index.php/es/sistema_dapc/*other', to: redirect('dapcons/index?locale=es')
  get 'index.php/ca/*other', to: redirect('home/index?locale=ca')
  get 'index.php/es/*other', to: redirect('home/index?locale=es')

  get 'interaccions', to: 'interaccions#create', as: :interaccions
  get 'interaccions/descarregues_dapcons', to: 'interaccions#descarregues_dapcons'
  
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
