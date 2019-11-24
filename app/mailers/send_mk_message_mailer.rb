class SendMkMessageMailer < ApplicationMailer
	default from: 'noreply@csostenible.net'

	def send_missatge(emissor, destinatari, producte, missatge)
		@emissor = emissor
		@destinatari = destinatari
		@producte = producte
		@missatge = missatge
		usuari_receptor = User.find(@destinatari.user_id)
		email_usuari_receptor = usuari_receptor.email
		mail(:to => email_usuari_receptor,
    :subject => 'Missatge MARKETcons' )
	end
end
