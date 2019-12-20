class InteraccionsController < ApplicationController

	def descarregues_dapcons
		if user_signed_in?
			if current_user.id == 1
				@interaccions = Interaccio.where(categoria: 'Download DAPcons').order(created_at: :desc)
			else
				@interaccions = Interaccio.where(categoria: 'Download DAPcons', producte_dapcons_user_id: current_user.id).order(created_at: :desc)
			end
		end
	end

	def create
		@interaccio = Interaccio.new(interaccio_params)
		@interaccio.user_id = current_user.id
		@interaccio.user_email = current_user.email
		@interaccio.user_first_name = current_user.first_name
		@interaccio.user_last_name = current_user.last_name
		@interaccio.save
		redirect_to @interaccio.link
	end

	private
    def interaccio_params
      params.permit(:nom, :categoria, :link, :user_id, :user_email, :user_first_name, :user_last_name, :producte_dapcons_id, :producte_dapcons_user_id)
    end
end
