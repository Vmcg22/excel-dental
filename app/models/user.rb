class User < ApplicationRecord
    #self.table_name = "my_table_name"
    has_secure_password
    
    #Para indicar que se usaran validaciones:
    validates :email, presence: true, uniqueness: true #Nos indica que será único el email
    validates :name, :password, presence: true
end
