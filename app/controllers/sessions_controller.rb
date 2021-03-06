class SessionsController < ApplicationController
  def new
  end

  def create
    authenticated = false
    personnel = User.where("lower(email) = lower(?)", params[:email]).first 
    if personnel && personnel.authenticate(params[:password]) then
      session[:user_id] = personnel.id
      respond_to do |format|
        format.json { render json: ["Success!"] }
        format.html {redirect_to articles_path, :notice => "You have successfully logged in!"}
      end
    else
      @not_valid = ["not valid"]
      respond_to do |format|
        format.json { render json: @not_valid }
        format.html { redirect_to root_url, :notice => "Invalid email or password."}
      end
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to articles_path, :notice => "You have successfully logged out."
  end
end
