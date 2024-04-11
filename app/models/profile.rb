class Profile < ApplicationRecord
  belongs_to :user

  validates :user_id, uniqueness: true
  validates :first_name, presence: true
  validates :middle_name,  presence: true
  validates :last_name,  presence: true
  validates :suffix, presence: false, allow_blank: true
  validates :contact_number,  presence: true, length: {minimum: 11, maximum: 11}
  validates :birthday,  presence: true
  validates :address,  presence: true
end
