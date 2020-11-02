class AllergiesController < ApplicationController
  def index
  end

  def new
    @allergy = Allergy.new
  end

  def create
    @allergy = Allergy.new(allergy_params)

    if @allergy.save
      return redirect_to url_for(:controller => :welcome, :action => :main)
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  private

  #Permite que solo permita los siguientes parámetros
  def allergy_params
    params.require(:allergy).permit(:respuesta)
  end
end

