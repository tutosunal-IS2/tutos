class PageMailer < ApplicationMailer

	def received(email,comments,name)
    @email = email
    @comments = comments
    @name = name
    mail to: @email,subject:'Comentario',bcc:"davixie20@gmail.com"
  	end
end
