class IndexController < ApplicationController
  # layout false
  # index page doesnt need header partial
  def index
  end

  def dashboard
    @appointments = Appointment.all
    render 'index/dashboard'
  end
end
