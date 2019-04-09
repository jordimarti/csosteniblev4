class MarketconsController < ApplicationController
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
    @mk_user = MkUser.where(user_id: @producte.user_id).last
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
end
