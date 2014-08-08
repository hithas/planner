class UsersController < ApplicationController
before_filter :login_required, :except => [:new, :create]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user.id != session['user_id']
      redirect_to "/goals", :notice => "Access denied"
    end
    @user = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.theme_id = 1

    if @user.save
      redirect_to "/users/#{ @user.id }"
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
    if @user.id != session['user_id']
      redirect_to "/goals", :notice => "Access denied"
    end
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    if(@user.authenticate(params['old_password']))
      @user.password = params[:password]
      @user.password_confirmation = params[:password_confirmation]
      if @user.save
          redirect_to "/users/#{ @user.id }"
      else
          render 'edit'
      end
    else
      redirect_to "/users/#{ @user.id }/edit", :notice => "Incorrect password"
    end
  end

  def theme
    @user = User.find_by(id: params['id'])
  end
  
  def change_theme
    @user = User.find_by(id: params[:id])
    if @user.id != session['user_id']
      redirect_to "/goals", :notice => "Access denied" and return
    end
    user = User.find_by(id: params['id'])
    user.theme_id = params['theme_id']
    user.save
    redirect_to "/goals"
  end
  
  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to "/users"
  end
end
