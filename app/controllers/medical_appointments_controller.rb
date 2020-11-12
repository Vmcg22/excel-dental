class MedicalAppointmentsController < ApplicationController
  def index
  end

  def new
    @medical_appointment = MedicalAppointment.new
    @medical_appointment.fecha = Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
  end

  def create
    @medical_appointment = MedicalAppointment.new(medical_appointment_params)

    if @medical_appointment.save
      #return redirect_to new_users_path
      render :new
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  private

  def medical_appointment_params
    params.require(:medical_appointment).permit(:motivo, :fecha)
  end
end
