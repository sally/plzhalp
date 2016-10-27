class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :role, presence: true

  # implement (if not in the User model, user helper) a way to write the 'role' attribute as 'mentor' or 'student' depending on user choice upon registration

  def full_name
    first_name + " " + last_name
  end
end