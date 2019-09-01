class MarketconsController < ApplicationController
  before_action :authenticate_user!, only: [:nou_anunci, :editar_anunci, :missatges]
  before_action :categories
  layout "buit", only: [:comprova_unitats_categoria, :reserva_producte, :anula_reserva_producte]

  def index
  	@filtres = true
    @menu_actiu = "destacat" 
    @productes = MkProduct.where(aprovat: true, visible: true)
    if params[:preu] != 'tots'
		  @productes = @productes.where("preu < :limit_preu", {limit_preu: params[:preu] })
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

  def producte_venut
    producte = MkProduct.find(params[:mk_product_id])
    producte.venut = true
    producte.visible = false
    producte.save
    redirect_to marketcons_venedor_path(user_id: producte.user_id)
  end

  def producte_amagar
    producte = MkProduct.find(params[:mk_product_id])
    producte.visible = false
    producte.save
    redirect_to marketcons_venedor_path(user_id: producte.user_id)
  end

  def nou_anunci
    @filtres = false
    @menu_actiu = "nou_anunci"
    @mk_product = MkProduct.new
  end

  def editar_anunci
    @filtres = false
    @mk_product = MkProduct.find(params[:mk_product_id])
    @mk_documents = MkDocument.where(mk_product_id: @mk_product.id)
  end

  def venedor
    @filtres = false
    @menu_actiu = "venedor"
    if user_signed_in? && current_user.id == params[:user_id]
      @menu_actiu = "venedor"
    end 
    @mk_user = MkUser.where(user_id: params[:user_id]).last
    @productes = MkProduct.where(user_id: params[:user_id], aprovat:true, visible: true)
  end

  def perfil
    @filtres = false
    @menu_actiu = "perfil"
    #@mk_user = MkUser.find(params[:mk_user_id])
    @mk_user = MkUser.find_by(user_id: current_user.id)
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
    @comprador = MkUser.where(user_id: params[:user_id]).last
    @venedor = User.find(@producte.user_id)
    @mk_user = MkUser.where(user_id: @venedor.id).last
    @missatges_comprador = MkMissatge.where(user_id: params[:user_id], destinatari: @venedor.id, mk_product_id: params[:mk_product_id])
    @missatges_venedor = MkMissatge.where(user_id: @venedor.id, destinatari: params[:user_id], mk_product_id: params[:mk_product_id])
    @missatges = @missatges_comprador + @missatges_venedor
    @missatges_ordenats = @missatges.sort_by { |obj| obj.created_at }

    if @producte.reservat == true
      @mk_user_reserva = MkUser.where(user_id: @producte.reservat_usuari).last
    end

    @mk_missatge = MkMissatge.new
  end

  def aprovacions
    @productes = MkProduct.where(aprovat: false)
  end

  def publicats
    @productes = MkProduct.where(aprovat: true)
  end

  def usuaris
    @usuaris = MkUser.all
  end

  def reserva_producte
    mk_product = MkProduct.find(params[:mk_product_id])
    mk_product.reservat = true
    mk_product.reservat_usuari = params[:user_id]
    if mk_product.save
      @resposta = "Reservat"
    else
      @resposta = "Error"
    end
  end

  def anula_reserva_producte
    mk_product = MkProduct.find(params[:mk_product_id])
    mk_product.reservat = false
    mk_product.reservat_usuari = nil
    if mk_product.save
      @resposta = "Anulat"
    else
      @resposta = "Error"
    end
  end

  def distance(loc1, loc2)
    rad_per_deg = Math::PI/180  # PI / 180
    rkm = 6371                  # Earth radius in kilometers
    rm = rkm * 1000             # Radius in meters

    dlat_rad = (loc2[0]-loc1[0]) * rad_per_deg  # Delta, converted to rad
    dlon_rad = (loc2[1]-loc1[1]) * rad_per_deg

    lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
    lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }

    a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
    c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

    return rm * c # Delta in meters
  end

  helper_method :distance


  private
    def categories
      @categories = MkCategoria.all
    end
end
