class SubstancesController < ApplicationController
  def new
    @substance = Substance.new
  end

  def create
    @substance = Substance.new(substance_params)

    if @substance.save
      
      return redirect_to url_for(:controller => :welcome, :action => :main)
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  private

  #Permite que solo permita los siguientes parámetros
  def substance_params
    params.require(:substance).permit(:fuma, :toma)
  end
end
