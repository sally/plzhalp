class Strength < ApplicationRecord
  validates :mentor, :topic, presence: true
  validates :mentor, uniqueness: {scope: [:topic]}

  belongs_to :mentor 
  belongs_to :topic
end