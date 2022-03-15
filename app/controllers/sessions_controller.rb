class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.where({email:params["email"]})[0]
    if @user 
      if @user.password == params["password"]
        flash[:notice] = "You Logged In!"
        redirect_to "/places/new"
      else
        flash[:notice] = "Incorrect Credentials OR Sign Up Today!"
        redirect_to "/sessions/new"
      end
    else
      redirect_to "/sessions/new"
    end
  end

  def destroy
  end
end
  