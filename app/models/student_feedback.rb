class StudentFeedback < ApplicationRecord
  validates :body, :appointment, presence: true

  belongs_to :appointment
end
