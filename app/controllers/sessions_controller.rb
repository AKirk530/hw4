class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.where({email:params["email"]})[0]
    if @user 
      if @user.password == params["password"]
        redirect_to "/places/new"
      else
        redirect_to "/sessions/new"
      end
    else
      redirect_to "/sessions/new"
    end
  end

  def destroy
  end
end
  