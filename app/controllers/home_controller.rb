class HomeController < ApplicationController
  def index
  end

  def panel
  	@casos_practics = CasPractic.where(visible: false)
  end
end
