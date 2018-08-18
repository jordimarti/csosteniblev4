class DapconsController < ApplicationController
  before_action :noticies_dapc

  def index
  end

  def que_son
  end

  def utilitat
  end

  def organitzacions_afiliades
    @empreses = OrganitzacioAfiliada.where(tipus: 'Empresa').order(numero_membre: :asc)
    @entitats = OrganitzacioAfiliada.where(tipus: 'Entitat').order(numero_membre: :asc)
  end

  def productes_registrats
    #fins que no es digui el contrari no s'han de separar productes per categoria
    @categoria = false
    #productes vàlids
    if params[:validesa] == 'true'
      productes_valids = ProducteDapcons.where("validesa_fi > ?", Date.today).order(validesa_inici: :desc)
    else
      productes_valids = ProducteDapcons.all.order(validesa_inici: :desc)
    end
    #filtres
    if params[:filtre] == 'data'
      @productes = productes_valids.order(validesa_inici: :desc)
    elsif params[:filtre] == 'nom'
      @productes = productes_valids.order(empresa: :asc)
    elsif params[:filtre] == 'categoria'
      @categoria = true
      @aillants_termics = productes_valids.where(categoria_indicadors: '001')
      @revestiments_ceramics = productes_valids.where(categoria_indicadors: '002')
      @pedra_natural = productes_valids.where(categoria_indicadors: '004')
      @productes_general = productes_valids.where(categoria_indicadors: '100')
    end
  end

  def empreses_dapcons
  end

  def documents_oficials
  end

  def administradors
  end

  def consell_assessor
  end

  def panells_sectorials
  end

  def eco_platform
  end

  def entitats_colaboradores
  end

  def verificadors
  end

  def afiliacio
  end

  def registrar_producte
  end

  def contacte
  end

  def llistat_productes
    @aillants_termics = ProducteDapcons.where(categoria_indicadors: '001')
    @revestiments_ceramics = ProducteDapcons.where(categoria_indicadors: '002')
    @pedra_natural = ProducteDapcons.where(categoria_indicadors: '004')
    @productes_general = ProducteDapcons.where(categoria_indicadors: '100')
    if user_signed_in?
      @productes_usuari = ProducteDapconsUsuari.where(user_id: current_user.id).order(created_at: :desc)
    end
  end

  def comparador
    if params[:tipus_producte1] == 'sistema'
      @producte1 = ProducteDapcons.find(params[:producte1])
    else
      @producte1 = ProducteDapconsUsuari.find(params[:producte1])
    end
    if params[:tipus_producte2] == 'sistema'
      @producte2 = ProducteDapcons.find(params[:producte2])
    else
      @producte2 = ProducteDapconsUsuari.find(params[:producte2])
    end
    @tipus_indicadors = TipusIndicador.all
  end

  private
    def noticies_dapc
      @noticies = Noticia.where(dapc: true).limit(6)
    end
end

