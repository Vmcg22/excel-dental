class WelcomeController < ApplicationController
  def index
  end

  def main
    #flash[:notice] = "Welcome to Rails"
    #flash[:alert] = "Exist an Error with Rails App" 
    @patient = Patient.find_by_user_id(current_user.id)
    @disease = Disease.find(@patient.disease_id)
    @allergy = Allergy.find(@patient.allergy_id)
    @medicine = Medicine.find(@patient.medicine_id)
  end
  
end
