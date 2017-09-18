class SessionsController < ApplicationController
  def create
    if user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
    end

    redirect_to profile_path(user)
  end

  def destroy
    reset_session
    #session.clear
    redirect_to root_path
  end
end
