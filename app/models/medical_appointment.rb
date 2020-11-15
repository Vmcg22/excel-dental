class MedicalAppointment < ApplicationRecord
  #Validaciones del modelo:
  validates :motivo, presence: true
  
  #Relaciones
  belongs_to :patient
end
