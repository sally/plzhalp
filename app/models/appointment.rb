class Appointment < ApplicationRecord
  validates :mentor, :student, :date, :start_time, :end_time, presence: true
  validates :mentor, uniqueness: { scope: [:date, :start_time] }

  belongs_to :mentor 
  belongs_to :student

  has_many :student_feedbacks
end
