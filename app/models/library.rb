class Library < ApplicationRecord
  has_many :library_sections
  has_many :sections, through: :library_sections
end
