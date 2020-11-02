class Allergy < ApplicationRecord
    #Validaciones del modelo:
    validates :respuesta, presence: true
end
