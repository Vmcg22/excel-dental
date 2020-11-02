class Allergy < ApplicationRecord
    #Validaciones del modelo:
    validates :respuesta, presence: true

    #Relaciones:
    has_many :patients
end
