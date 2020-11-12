class Patient < ApplicationRecord
    #Validaciones del modelo:
    validates :nombres, :apellidos, :edad, :fecha_nacimiento, :colonia, :direccion, :celular, presence: true

    #Relaciones:
    belongs_to :user
    belongs_to :disease, required: false
    belongs_to :allergy, required: false
    belongs_to :medicine, required: false
    has_many :medical_appointments

end
