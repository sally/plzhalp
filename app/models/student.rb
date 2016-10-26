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

  def email
    user.email
  end

  def role
    user.role
  end

  def picture_url
    user.picture_url
  end
end