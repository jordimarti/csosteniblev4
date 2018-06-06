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
    @productes = ProducteDapcons.all
    @tipus_indicadors = TipusIndicador.all
  end

  private
    def noticies_dapc
      @noticies = Noticia.where(dapc: true).limit(6)
    end
end

