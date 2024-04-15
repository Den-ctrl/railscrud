class Subscription < ApplicationRecord
  enum plan: {
    monthly: 0,
    yearly: 1
  }

  validates :plan, presence: true

  belongs_to :user, optional: false
  belongs_to :app, optional: false
end
