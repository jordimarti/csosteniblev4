class DapconsController < ApplicationController
  before_action :noticies_dapc

  def index
  end

  def que_son
  end

  def utilitat
  end

  def organitzacions_afiliades
  end

  def productes_registrats
    #@productes = ProducteDapcons.all.order(validesa_inici: :desc)
    @productes = ProducteDapcons.where(created_at: (Time.now.midnight - 1.day)..Time.now.midnight).order(validesa_inici: :desc)
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
    @productes_usuari = ProducteDapconsUsuari.where(user_id: current_user.id).order(created_at: :desc)
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

