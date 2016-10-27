class IndexController < ApplicationController
  # layout false
  # index page doesnt need header partial
  def index
    @appointments = Appointment.all
    render 'index/index'
  end

  def dashboard

  end
end
