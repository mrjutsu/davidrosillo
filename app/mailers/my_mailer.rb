class MyMailer < ApplicationMailer

	def contact_mail(contact)
		@name = contact.name
		@email = contact.name
		@subject = contact.subject
		@body = contact.body
		mail(to: ENV["personal_mail"], subject: @subject)
	end
end
