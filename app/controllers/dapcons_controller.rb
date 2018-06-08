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

  def comparador
    @producte1 = params[:producte1]
    @producte2 = params[:producte2]
    @etapa_a1_a3 = Indicador.where(producte_dapcons_id: @producte1.id, etapa: 'A1-A3')
    
    @etapa_a4 = Indicador.where(etapa: 'A4')
  end

  private
    def noticies_dapc
      @noticies = Noticia.where(dapc: true).limit(6)
    end
end

