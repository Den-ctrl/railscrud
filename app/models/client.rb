class Client < User
    rolify
    
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

    def client?
        has_role?(:client)
    end

end
