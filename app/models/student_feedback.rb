class StudentFeedback < ApplicationRecord
  validates :body, :appointment, presence: true
end
