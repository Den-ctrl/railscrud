class Section < ApplicationRecord
    include PublicUid::ModelConcern
    generate_public_uid
    has_ancestry

    validates :name, :short_name, presence: true, uniqueness: true

    has_many :libraries

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
