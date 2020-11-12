class MedicalAppointmentsController < ApplicationController
  def index
  end

  def new
    @medical_appointment = MedicalAppointment.new
    @medical_appointment.fecha = Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
  end

  def create
    medical_appointment = MedicalAppointment.new(medical_appointment_params)
    patient = Patient.find_by_user_id(current_user.id)
    medical_appointment.patient_id = patient.id
    @medical_appointment = medical_appointment

    if @medical_appointment.save
      #return redirect_to new_users_path
      return redirect_to url_for(:controller => :welcome, :action => :show, :id => @medical_appointment.patient_id)
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  private

  def medical_appointment_params
    params.require(:medical_appointment).permit(:motivo, :fecha)
  end
end
