class StudentFeedbacksController < ApplicationController
  def new
    @student_feedback = StudentFeedback.new
  end

  def create
    @student_feedback = StudentFeedback.new(student_feedback_params)
    @student_feedback.appointment = Appointment.find(params[:appointment_id])
    if @student_feedback.save
      redirect_to user_path(current_user)
    else
      'idgaf'
    end
  end

  def show

  end

  private
  def student_feedback_params
    params.require(:student_feedback).permit(:body, :appointment_id)
  end
end
