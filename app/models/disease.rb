class Disease < ApplicationRecord
    #Validaciones del modelo:
    validates :respuesta, presence: true

    #Relaciones:
    has_one :patient
end
