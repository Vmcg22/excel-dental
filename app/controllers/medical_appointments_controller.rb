class MedicalAppointmentsController < ApplicationController
  def index
  end

  def new
    @medical_appointment = MedicalAppointment.new
    @medical_appointment.fecha = Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
  end

  def create
    
  end
end
