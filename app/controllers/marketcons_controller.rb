class MarketconsController < ApplicationController
  def index
  	@filtres = true
  	if params[:preu] == "tots" && params[:distancia] == "tots"
  		@productes = MkProduct.all
  	else
  		@productes = MkProduct.where("preu < :limit_preu", {limit_preu: params[:preu]})
  	end

  end

  def about
  end
end
