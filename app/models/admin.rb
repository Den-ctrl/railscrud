class Admin < User    
    has_many :schedules, as: :schedulable, dependent: :restrict_with_error

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

    def admin?
        has_role?(:admin)
    end
end
