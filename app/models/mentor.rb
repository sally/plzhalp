class Mentor < ApplicationRecord
  validates :user, presence: true
  validates :user, uniqueness: true
end
