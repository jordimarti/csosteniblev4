class HomeController < ApplicationController
  def index
  	@noticies = Noticia.last(2)
  end

  def panel
  	@casos_practics = CasPractic.where(visible: false)
  end

  def logout
  	render layout: "mobile"
  end
end
