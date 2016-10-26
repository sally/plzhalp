class Appointment < ApplicationRecord
  validates :mentor, :student, :date, :start_time, :end_time, presence: true
  validates :mentor, uniqueness: { scope: [:date, :start_time] }
end
