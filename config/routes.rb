Rails.application.routes.draw do
  resources :videos
  resources :noticies
  resources :empreses
  resources :categories
  resources :categoria_productes
  resources :ecoetiqueta_productes
  resources :ecoetiquetes
  resources :document_productes
  get 'productes/llistat', to: 'productes#llistat', :as => :llistat_productes
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
  get 'home/index'
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
