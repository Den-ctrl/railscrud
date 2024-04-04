class Section < ApplicationRecord
    include PublicUid::ModelConcern
    generate_public_uid
    has_ancestry

    has_many :schedules, dependent: :restrict_with_error

    validates :name, :short_name, presence: true, uniqueness: true

    state_machine :state, initial: :activated do
         event :published do
            transition activated: :published
        end 
        event :unpublished do
            transition activated: :unpublished
        end

        event :deactivate do
            transition [:published, :unpublished] => :activated
        end
    end

    searchable do
        text :name, :short_name, :ancestry, :state
    end

end
