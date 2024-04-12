class App < ApplicationRecord
  has_many :subscriptions, dependent: :restrict_with_error
  has_many :users, through: :subscriptions
  # has_many :libraries, dependent: :restrict_with_error
end
