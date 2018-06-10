class UsersController < Application:Controller
  def new

  end

  def create
    user = User.new(user_params).save

  end
end
