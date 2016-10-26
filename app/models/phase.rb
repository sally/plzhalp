class Phase < ApplicationRecord
  validates :number, presence: true
  validates :number, uniqueness: true

  has_many :topics
  has_many :students
end
