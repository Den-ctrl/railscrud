class Schedule < ApplicationRecord
    include PublicUid::ModelConcern

    validates :event, uniqueness: true, presence: true
    validates :start_date, :end_date, presence: true
    
    validates_comparison_of :end_date, greater_than: :start_date
end
