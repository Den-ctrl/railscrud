class Subscription < ApplicationRecord
  enum plan: {
    monthly: 0,
    yearly: 1
  }

  validates :plan, presence: true

  has_many :schedules, as: :subscription

  belongs_to :subscribable, polymorphic: true, optional: true
  belongs_to :user, optional: false
  belongs_to :app, optional: false
end
