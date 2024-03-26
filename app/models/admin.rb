class Admin < User
    rolify
    
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

    def admin?
        has_role?(:admin)
    end
end
