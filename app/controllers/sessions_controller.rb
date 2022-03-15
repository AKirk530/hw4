class SessionsController < ApplicationController
  def new
  end

  def create
    redirect_to "/places/new"
  end

  def destroy
  end
end
  