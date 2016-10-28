class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    if current_user
      if current_user.role == "mentor"
       @appointment =   Appointment.new(appointment_params)
        @mentor = Mentor.find_by(user_id: current_user.id)
        @appointment.mentor_id = current_user.id
          @mentor.appointments << @appointment
      end
      if @appointment.save
        redirect_to '/'
      else
        render 'new'
      end
    end
  end

  private
  def appointment_params
    params.require(:appointment).permit(:mentor_id, :student_id, :date, :start_time, :end_time)
  end
end
