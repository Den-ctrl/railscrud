class Admin < User    
    has_many :schedules, as: :schedulable, dependent: :destroy

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

    def admin?
        has_role?(:admin)
    end
end
