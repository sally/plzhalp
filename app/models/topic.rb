class Topic < ApplicationRecord
  validates :name, :phase, presence: true
  validates :name, uniqueness: {scope: [:phase]}

  belongs_to :phase
end
