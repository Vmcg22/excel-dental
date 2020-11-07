class PatientsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :index]

  def index
    @patient = Patient.all()
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
  end

  def update
  end

  def delete
  end

  private

  #Permite que solo permita los siguientes parámetros
  def patient_params
    params.require(:patient).permit(:nombres, :apellidos, :edad, :fecha_nacimiento, :sexo ,:colonia ,:direccion ,:telefono, :celular ,:apodo ,:facebook)
  end
end
