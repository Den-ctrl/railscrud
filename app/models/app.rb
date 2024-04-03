class App < ApplicationRecord
  has_many :libraries, dependent: :destroy
end
