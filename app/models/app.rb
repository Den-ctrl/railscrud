class App < ApplicationRecord
  has_many :subscriptions, dependent: :restrict_with_error
  has_many :users, through: :subscriptions
  # has_many :libraries, dependent: :restrict_with_error

  validates :app_name, uniqueness: true, presence: true

  scope :ordered, -> { order(id: :desc) }
end
