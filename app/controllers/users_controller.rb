class UsersController < Application:Controller
  def new

  end

  def create
    @user = User.create(user_params)

  end

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)

  end
end
