class Appointment < ApplicationRecord
  validates :mentor, :student, :date, :start_time, :end_time, presence: true
  validates :mentor, uniqueness: { scope: [:date, :start_time] }

  belongs_to :mentor 
  belongs_to :student

  has_many :student_feedbacks

  def formatted_start_time
    start_time.strftime("%H" + ":" + "%M")
  end

  def formatted_end_time
    end_time.strftime("%H" + ":" + "%M")
  end

  def formatted_date
    date.to_s
  end
end
