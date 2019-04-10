class MarketconsController < ApplicationController
  before_action :authenticate_user!, only: [:nou_anunci, :editar_anunci]
  before_action :categories
  layout "resposta_unitats", only: [:comprova_unitats_categoria]

  def index
  	@filtres = true
  	if params[:preu] == "tots" && params[:distancia] == "tots"
  		@productes = MkProduct.all
  	else
  		@productes = MkProduct.where("preu < :limit_preu", {limit_preu: params[:preu]})
  	end

  end

  def producte
    @filtres = false
    @producte = MkProduct.find(params[:mk_product_id])
    @categoria = MkCategoria.where(id: @producte.categoria.to_i).last
    @mk_user = MkUser.where(user_id: @producte.user_id).last
  end

  def nou_anunci
    @mk_product = MkProduct.new
  end

  def editar_anunci
    @mk_product = MkProduct.find(params[:mk_product_id])
  end

  def venedor
    @filtres = false
    @mk_user = MkUser.where(user_id: params[:user_id]).last
    @productes = MkProduct.where(user_id: params[:user_id])
  end

  def perfil
    @filtres = false
    @mk_user = MkUser.find(params[:mk_user_id])
  end

  def about
  end

  def comprova_unitats_categoria
    categoria = MkCategoria.find(params[:categoria_id])
    @unitats = categoria.unitats
  end

  private
    def categories
      @categories = MkCategoria.all
    end
end
