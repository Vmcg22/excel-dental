class MedicinesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :index, :edit, :update, :show]
  
  def new
    @medicine = Medicine.new
  end

  def show
    @medicine = Medicine.find(params[:id])
  end

  def create
    @medicine = Medicine.new(medicine_params)

    if @medicine.save
      @patient = Patient.find_by_user_id(current_user.id)
      @patient.update(medicine_id: @medicine.id)
      return redirect_to url_for(:controller => :substances, :action => :new)
    end

    render :new #Si no se guarda llena un arreglo con los errores
  end

  def edit
    @medicine = Medicine.find(params[:id])
  end

  def update
    @medicine = Medicine.find(params[:id])

    if @medicine.update(medicine_params)
      return redirect_to url_for(:controller => :medicines, :action => :show)
    end
  end

  private 

  #Permite que solo permita los siguientes parámetros
  def medicine_params
    params.require(:medicine).permit(:respuesta)
  end
end
