class Patient < ApplicationRecord
    #Validaciones del modelo:
    validates :nombres, :apellidos, :edad, :fecha_nacimiento, :colonia, :direccion, :celular, presence: true
end
