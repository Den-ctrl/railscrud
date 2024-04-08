class Profile < ApplicationRecord
  belongs_to :user

  validates :user_id, uniqueness: true
  validates :first_name, presence: true
  validates :middle_name,  presence: true
  validates :suffix, presence: true
end
