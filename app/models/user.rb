class User < ApplicationRecord
    #self.table_name = "my_table_name"

    #Encriptación de contraseña:
    has_secure_password
    
    #Para indicar que se usaran validaciones:
    validates :email, presence: true, uniqueness: true #Nos indica que será único el email
    validates :name, :password, presence: true

    #Relaciones:
    has_many :patients

end
