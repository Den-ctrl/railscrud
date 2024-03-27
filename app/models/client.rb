class Client < User
    rolify
    
    has_many :schedules, as: :sectionable

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

    def client?
        has_role?(:client)
    end

end
