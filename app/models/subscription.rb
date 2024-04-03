class Subscription < ApplicationRecord
  belongs_to :user, optional: false
  belongs_to :app, optional: false
end
