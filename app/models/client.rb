class Client < User 
    has_many :schedules, as: :schedulable, dependent: :restrict_with_error

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

    def client?
        has_role?(:client)
    end

end
