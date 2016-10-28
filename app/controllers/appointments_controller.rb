class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    if current_user.role == "mentor"
      # Make a new appointment using the params
     @appointment = Appointment.new(appointment_params)
      # Find the mentor that is currently logged in
     @mentor = Mentor.find_by(user_id: current_user.id)
     @appointment.mentor_id = @mentor.id #current_user.id
    #  @mentor.appointments << @appointment
    end
    if @appointment.save
      redirect_to '/'
    else
      @errors = @appointment.errors.full_messages
      render 'new'
    end
  end

  private
  def appointment_params
    params.require(:appointment).permit(:mentor_id, :date, :start_time, :end_time)
  end
end
