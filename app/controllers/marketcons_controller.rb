class MarketconsController < ApplicationController
  before_action :authenticate_user!, only: [:nou_anunci, :editar_anunci]
  before_action :categories
  layout "resposta_unitats", only: [:comprova_unitats_categoria]

  def index
  	@filtres = true
    @menu_actiu = "destacat"
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
    missatges = MkMissatge.where(mk_product_id: params[:mk_product_id])
    compradors = Array.new
    missatges.each do |m|
      compradors.push(m.user_id)
    end
    #Si hi ha diversos missatges d'una mateixa persona hi haurà duplicats, els eliminem
    compradors = compradors.uniq
    @compradors = MkUser.where(user_id: compradors)
  end

  def nou_anunci
    @filtres = false
    @menu_actiu = "nou_anunci"
    @mk_product = MkProduct.new
  end

  def editar_anunci
    @filtres = false
    @mk_product = MkProduct.find(params[:mk_product_id])
  end

  def venedor
    @filtres = false
    if user_signed_in? && current_user.id == params[:user_id]
      @menu_actiu = "venedor"
    end 
    @mk_user = MkUser.where(user_id: params[:user_id]).last
    @productes = MkProduct.where(user_id: params[:user_id])
  end

  def perfil
    @filtres = false
    @mk_user = MkUser.find(params[:mk_user_id])
  end

  def about
    @menu_actiu = "about"
  end

  def categoria
    @productes = MkProduct.where(categoria: params[:categoria_id])
    @categoria = MkCategoria.find(params[:categoria_id])
  end

  def comprova_unitats_categoria
    categoria = MkCategoria.find(params[:categoria_id])
    @unitats = categoria.unitats
  end

  def missatges
    @producte = MkProduct.find(params[:mk_product_id])
    @venedor = User.find(@producte.user_id)
    @mk_user = MkUser.where(user_id: @venedor.id).last
    @missatges_comprador = MkMissatge.where(user_id: params[:user_id], destinatari: @venedor.id, mk_product_id: params[:mk_product_id])
    @missatges_venedor = MkMissatge.where(user_id: @venedor.id, destinatari: params[:user_id], mk_product_id: params[:mk_product_id])
    
    #Creem un Array amb tots els missatges per tal d'ordenar-los cronològicament
    #@missatges = Array.new
    #@missatges_comprador.each do |m|
    #  @missatges.push(m)
    #end
    #@missatges_venedor.each do |m|
    #  @missatges.push(m)
    #end
    #@missatges.sort_by(&:created_at)

    @missatges = @missatges_comprador + @missatges_venedor
    @missatges_ordenats = @missatges.sort_by { |obj| obj.created_at }

    @mk_missatge = MkMissatge.new
  end

  private
    def categories
      @categories = MkCategoria.all
    end
end
