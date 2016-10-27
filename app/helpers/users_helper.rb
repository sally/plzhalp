module UsersHelper
  #helper methods mentor? and student? to check user's role
  def mentor?
    current_user.role == 'mentor'
  end

  def student?
    current_user.role == 'student'
  end
end