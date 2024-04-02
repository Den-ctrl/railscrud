class App < ApplicationRecord
    has_many :libraries
    has_many :users
end
