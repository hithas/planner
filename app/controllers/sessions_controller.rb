class SessionsController < ApplicationController
  def new
  end
  
  def home
  end
  
  def create
    u = User.find_by(name: params['username'])
    if u && u.authenticate(params['password'])
      session['user_id'] = u.id
      redirect_to '/'
    else
      redirect_to '/sessions/new', :notice => "Incorrect username/password"
    end
  end
  
  def destroy
    reset_session
    redirect_to '/sessions/new'
  end
end