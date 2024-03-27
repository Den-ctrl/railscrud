class Admin < User
    rolify
    
    has_many :schedules, as: :sectionable

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

    def admin?
        has_role?(:admin)
    end
end
