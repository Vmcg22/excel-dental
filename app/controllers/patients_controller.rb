class PatientsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :index, :edit, :update, :show]

  def index
    @patient = Patient.order(:nombres)
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
    @patient.celular = current_user.email
  end

  def create
    @patient = current_user.patients.new(patient_params)

    if @patient.save
      #return redirect_to new_users_path
      return redirect_to url_for(:controller => :diseases, :action => :new)
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])

    if @patient.update patient_params
      return redirect_to url_for(:controller => :patients, :action => :show)
    end

    render :edit
  end

  def delete
    @patient = Patient.find(params[:id])
  end

  def destroy
    @patient = Patient.find(params[:id])
    MedicalAppointment.where(patient_id: @patient.id).destroy_all
    user_id = @patient.user_id
    disease_id = @patient.disease_id
    allergy_id = @patient.allergy_id
    medicine_id = @patient.medicine_id
    substance_id = @patient.substance_id
    @patient.destroy
    User.destroy(user_id)
    Disease.destroy(disease_id)
    Allergy.destroy(allergy_id)
    Medicine.destroy(medicine_id)
    Substance.destroy(substance_id)
    
    redirect_to patients_path
  end

  private

  #Permite que solo permita los siguientes parámetros
  def patient_params
    params.require(:patient).permit(:nombres, :apellidos, :edad, :fecha_nacimiento, :sexo ,:colonia ,:direccion ,:telefono, :celular ,:apodo ,:facebook)
  end
end
