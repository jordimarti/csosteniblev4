class SendMkMessageMailer < ApplicationMailer
	default from: 'jordimarti@me.com'

	def send_missatge(emissor, destinatari, producte, missatge)
		@emissor = emissor
		@destinatari = destinatari
		@producte = producte
		@missatge = missatge
		mail( :to => @destinatari.email,
    :subject => 'Missatge de MARKETcons' )
	end
end
