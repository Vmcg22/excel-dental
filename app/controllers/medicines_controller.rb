class MedicinesController < ApplicationController
  def new
    @medicine = Medicine.new
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

  private 

  #Permite que solo permita los siguientes parámetros
  def medicine_params
    params.require(:medicine).permit(:respuesta)
  end
end
