class SessionsController < ApplicationController
  # login - creating a new session (not user)
  def create
    @user = User.find_by_username(params[:username])
    # authenticate is a new method given to us by Bcrypt. It checks the password passed in if it's the correct password
    if @user && @user.authenticate(params[:password])
      login_user
      render json: @user, status: :ok
    else
      render json: { errors: ["Username or Password did not match."] }
    end
  end

  # logout - destroy the session
  def destroy
    reset_session
    render json: { errors: ["Successfully logged out"]}, status: :ok
  end
end
