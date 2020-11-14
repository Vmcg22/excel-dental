class MedicalAppointmentsController < ApplicationController
  def index
  end

  def new
    @medical_appointment = MedicalAppointment.new
    @medical_appointment.fecha = Time.now.strftime("%d/%m/%Y %H:%M")
    @medical_appointment.assign_attributes({:patient_id => params[:id]})
  end

  def show
    @medical_appointment = MedicalAppointment.find(params[:id])
  end

  def create
    @medical_appointment = MedicalAppointment.new(medical_appointment_params)

    if @medical_appointment.save
      #return redirect_to new_users_path
      return redirect_to url_for(:controller => :welcome, :action => :show, :id => @medical_appointment.patient_id)
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  def edit
    @medical_appointment = MedicalAppointment.find(params[:id])
  end

  def update
    @medical_appointment = MedicalAppointment.find(params[:id])

    if @medical_appointment.update medical_appointment_params
      return redirect_to url_for(:controller => :welcome, :action => :show, :id => @medical_appointment.patient_id)
    end

    render :edit
  end

  private

  def medical_appointment_params
    params.require(:medical_appointment).permit(:motivo, :fecha, :patient_id)
  end
end
