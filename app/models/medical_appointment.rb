class MedicalAppointment < ApplicationRecord
  #Relaciones
  belongs_to :patient
end
