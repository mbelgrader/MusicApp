class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if login_in!(user)
      redirect_to user_url(user)
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
