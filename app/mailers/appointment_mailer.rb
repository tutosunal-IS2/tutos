class AppointmentMailer < ApplicationMailer

	def appointment_created(cita)
    
    	mail to: cita.tutor.email,subject:'Cita',bcc:cita.student.email,body:cita.description
  	end
end
