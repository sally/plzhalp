class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    if request.xhr?
      @user = User.find(params[:id])
      render :layout => false, :file=>'app/views/users/_show'
    else
      if user_signed_in? && current_user.id == params[:id].to_i
        @user = User.find(params[:id])
      else
        redirect_to '/404'
      end
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      if @user.role == 'student'
        Student.create()
      redirect_to '/'
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :encrypted_password, :role, :first_name, :last_name)
  end

  def student_params
    params.require(:student).permit(:user_id)
  end
end
