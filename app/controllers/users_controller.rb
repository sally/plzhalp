class UsersController < ApplicationController
  def show
    if user_signed_in? && current_user.id == params[:id].to_i
      @user = User.find(params[:id])
    else
      redirect_to '/404'
    end
  end
end
