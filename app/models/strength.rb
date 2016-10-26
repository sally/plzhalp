class Strength < ApplicationRecord
  validates :mentor, :topic, presence: true
  validates :mentor, uniqueness: {scope: [:topic]}
end
