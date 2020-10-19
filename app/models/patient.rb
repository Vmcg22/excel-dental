class Patient < ApplicationRecord
    #Validaciones del modelo:
    validates :nombres, :apellidos, :edad, :fecha_nacimiento, :colonia, :direccion, :telefono, presence: true
end
