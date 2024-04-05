class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :assign_default_role

  has_many :subscriptions, dependent: :restrict_with_error
  has_many :apps, through: :subscriptions
  # has_many :library_membership, dependent: :restrict_with_error
  # has_many :libraries, through: :library_membership

  def assign_default_role
    self.add_role(:client) if self.roles.blank?
  end

end


