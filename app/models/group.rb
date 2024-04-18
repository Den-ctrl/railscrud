class Group < ApplicationRecord
  enum name: { group1: 0, group2: 1 }

  belongs_to :user

  has_many :subscriptions, as: :subscribable
end
