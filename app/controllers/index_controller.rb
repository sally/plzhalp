class IndexController < ApplicationController
  # layout false
  # index page doesnt need header partial
  def index
    @available_appointments = Appointment.where(student_id: nil)
    if current_user
      if current_user.role == 'mentor'
        @mentor = Mentor.find_by(user_id: current_user.id)
        @upcoming_appointments = @mentor.appointments.where.not(student_id: nil)
      elsif current_user.role == 'student'
        @student = Student.find_by(user_id: current_user.id)
        @upcoming_appointments = @student.appointments
      end
    end
    render 'index/index'
  end
end
