class SendMkMessageMailer < ApplicationMailer
	default from: 'jordimarti@me.com'

	def send_missatge(emissor, destinatari, producte, missatge)
		@emissor = emissor
		@destinatari = destinatari
		@producte = producte
		@missatge = missatge
		usuari_receptor = User.find(@destinatari.user_id)
		email_usuari_receptor = usuari_receptor.email
		mail(:to => email_usuari_receptor,
    :subject => 'MARKETcons' )
	end
end
