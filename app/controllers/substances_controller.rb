class SubstancesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :index, :edit, :update, :show]
  
  def new
    @substance = Substance.new
  end

  def show
    @substance = Substance.find(params[:id])
    @patient = Patient.find_by_substance_id(@substance.id)
  end

  def create
    @substance = Substance.new(substance_params)
    
    if @substance.save
      @patient = Patient.find_by_user_id(current_user.id)
      @patient.update(substance_id: @substance.id)
      return redirect_to url_for(:controller => :welcome, :action => :main)
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  def edit
    @substance = Substance.find(params[:id])
  end

  def update
    @substance = Substance.find(params[:id])

    if @substance.update(substance_params)
      return redirect_to url_for(:controller => :substances, :action => :show)
    end
  end

  private

  #Permite que solo permita los siguientes parámetros
  def substance_params
    params.require(:substance).permit(:fuma, :toma)
  end
end
