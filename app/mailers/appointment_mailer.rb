class AppointmentMailer < ApplicationMailer

	def appointment_created(cita)
    
    	mail to: cita.tutor.email,subject:'Cita',bcc:cita.student.email,body:cita.description
  	end

  	def appointment_deleted(cita)
    
    	mail to: cita.student.email,subject:'Cita Cancelada',bcc:cita.tutor.email,body:"Estimado(a) #{cita.student.name}, la cita fue cancelada por falta de disponibilidad"
  	end
end
