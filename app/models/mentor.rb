class Mentor < ApplicationRecord
  validates :user, presence: true
  validates :user, uniqueness: true

  has_many :appointments
  has_many :strengths

  belongs_to :user

  def first_name
    user.first_name
  end

  def last_name
    user.last_name
  end

  def full_name
    first_name + " " + last_name
  end

  def email
    user.email
  end
 
  def role
    user.role
  end

  def picture_url
    user.picture_url
  end

  def total_completed_appointments
    appointments.where('end_time < ?', Time.now).where.not(student_id:nil).count
  end

  def phase_strengths(number)
    topic_array = strengths.pluck(:topic_id).map do |id|
      Topic.find(id).name if Topic.find(id).phase.number == number
    end

    topic_array.compact
  end

  def past_appointments
    appointments.where('end_time < ?', Time.now).where.not(student_id:nil)
  end

  def pending_appointments
    appointments.where('start_time > ?', Time.now).where.not(student_id:nil)
  end
end
