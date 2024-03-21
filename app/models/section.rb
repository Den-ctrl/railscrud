class Section < ApplicationRecord
    generate_public_uid
    has_ancestry

    # validates :name, :short_name, presence: true

  
    
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
end
