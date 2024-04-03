class Schedule < ApplicationRecord
    generate_public_uid

    belongs_to :schedulable, polymorphic: true, optional: true
    belongs_to :section, optional: false

    validates :event, uniqueness: true, presence: true
    validates :start_date, :end_date, presence: true
    
    validates_comparison_of :end_date, greater_than: :start_date
end
