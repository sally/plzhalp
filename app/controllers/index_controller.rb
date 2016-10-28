class IndexController < ApplicationController
  # layout false
  # index page doesnt need header partial
  def index
    @available_appointments = Appointment.where(student_id: nil).where('start_time > ?', Time.now)
    @available_appointments = @available_appointments.recent
    if current_user
      if current_user.role == 'mentor'
        @mentor = Mentor.find_by(user_id: current_user.id)
        @upcoming_appointments = @mentor.pending_appointments
      elsif current_user.role == 'student'
        @student = Student.find_by(user_id: current_user.id)
        @upcoming_appointments = @student.pending_appointments
      end
    end
    render 'index/index'
  end
end
