class Student < ApplicationRecord
  validates :phase, :user, presence: true
  validates :user, uniqueness: true
end
