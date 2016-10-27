class IndexController < ApplicationController
  # layout false
  # index page doesnt need header partial
  def index
    @appointments = Appointment.all
    # p current_user
    if current_user
      if current_user.role == 'mentor'
        @mentor = Mentor.find_by(user_id: current_user.id)
        @upcoming_appointments = @mentor.appointments
      elsif current_user.role == 'student'
        @student = Student.find_by(user_id: current_user.id)
        @upcoming_appointments = @student.appointments
      end
    end
    render 'index/index'
  end

  def dashboard

  end
end
