class User < ApplicationRecord
    has_secure_password
    #self.table_name = "my_table_name"
end
