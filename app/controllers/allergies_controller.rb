class AllergiesController < ApplicationController
  def index
  end

  def new
    @allergy = Allergy.new
  end

  def show
    @allergy = Allergy.find(params[:id])
  end

  def create
    @allergy = Allergy.new(allergy_params)

    if @allergy.save
      @patient = Patient.find_by_user_id(current_user.id)
      @patient.update(allergy_id: @allergy.id)
      return redirect_to url_for(:controller => :medicines, :action => :new)
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  private

  #Permite que solo permita los siguientes parámetros
  def allergy_params
    params.require(:allergy).permit(:respuesta)
  end
end

