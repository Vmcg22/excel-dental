class DiseasesController < ApplicationController
  def index
    
  end

  def new
    @disease = Disease.new
  end

  def create
    @disease = Disease.new(disease_params)

    if @disease.save
      #return redirect_to new_users_path
      return redirect_to url_for(:controller => :diseases, :action => :new)
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  private

  #Permite que solo permita los siguientes parámetros
  def disease_params
    params.require(:disease).permit(:respuesta)
  end
end
