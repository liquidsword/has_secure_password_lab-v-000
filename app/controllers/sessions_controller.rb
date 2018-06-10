class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(username: params [:username])

    user = user.try(:authenticate, params [:user][:password])
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end

end
