class Student < ApplicationRecord
  validates :phase, :user, presence: true
  validates :user, uniqueness: true

  has_many :appointments
  belongs_to :phase

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

  def past_appointments
    appointments.where('end_time < ?', Time.now)
  end

  def pending_appointments
    appointments.where('start_time > ?', Time.now)
  end
end