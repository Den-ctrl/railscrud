class Library < ApplicationRecord
    validates :library_name, uniqueness: true, presence: true   
end
