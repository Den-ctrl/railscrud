class Client < User 
    has_many :schedules, as: :schedulable, dependent: :destroy

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

    def client?
        has_role?(:client)
    end

end
