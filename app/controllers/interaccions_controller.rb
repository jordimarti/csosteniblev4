class InteraccionsController < ApplicationController

	def descarregues_dapcons
		@interaccions = Interaccio.where(categoria: 'Download DAPcons').order(created_at: :desc)
	end

	def create
		@interaccio = Interaccio.new(interaccio_params)
		@interaccio.save
		redirect_to @interaccio.link
	end

	private
    def interaccio_params
      params.permit(:nom, :categoria, :link)
    end
end
