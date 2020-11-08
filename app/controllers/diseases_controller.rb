class DiseasesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
  end

  def show
    @disease = Disease.find(params[:id])
  end

  def new
    @disease = Disease.new
  end

  def create
    @disease = Disease.new(disease_params)

    if @disease.save
      @patient = Patient.find_by_user_id(current_user.id)
      @patient.update(disease_id: @disease.id)
      
      return redirect_to url_for(:controller => :allergies, :action => :new)
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  def edit
    @disease = Disease.find(params[:id])
  end

  def update
    @disease = Disease.find(params[:id])

    if @disease.update disease_params
      return redirect_to url_for(:controller => :diseases, :action => :show)
    end

    render :edit
  end

  private

  #Permite que solo permita los siguientes parámetros
  def disease_params
    params.require(:disease).permit(:respuesta)
  end
end
