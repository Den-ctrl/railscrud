class App < ApplicationRecord
  has_many :subscriptions, dependent: :restrict_with_error
  has_many :users, through: :subscriptions, dependent: :restrict_with_erro

  validates :app_name, uniqueness: true, presence: true
end
