class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if name.empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end




end
