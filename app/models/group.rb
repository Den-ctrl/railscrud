class Group < ApplicationRecord
  enum name: { group1: 0, group2: 1, group3: 2, group4: 3, group5: 4 }

  belongs_to :user

  has_many :subscriptions, as: :subscribable
end
