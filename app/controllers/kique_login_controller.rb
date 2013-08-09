class KiqueLoginController < ApplicationController
  before_filter :require_user, :only => [:about, :contactus]

  def index
  end

  def about
  end

  def contactus
  end
  
  # GET /users/new
  # GET /users/new.json
  def new
    @user_session = UserSession.new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

end
