class GoalsController < ApplicationController

  before_filter :login_required
  
  def index
    @goals = Goal.where(user_id: session['user_id'])
  end

  def category_index
    @goals = Goal.where(user_id: session['user_id'])
  end
  
  def show
    @goal = Goal.find_by(id: params[:id])
    if @goal.user_id != session['user_id']
      redirect_to "/goals", :notice => "You do not have access to this goal"
    else
      @goal = Goal.find_by(id: params[:id])
    end
  end

  def new
  end

  def create
      @goal = Goal.new
      @goal.user_id = session['user_id']
      @goal.name = params[:name]
      @goal.category_id = params[:category_id]
      @goal.desc = params[:desc]
      @goal.checkpoints = 0

      if @goal.save
        redirect_to "/goals##{ @goal.id }"
      else
        redirect_to "/new_goal", :notice => @goal.errors.full_messages.join(' ')
      end
  end
  
  def edit
    @goal = Goal.find_by(id: params[:id])
    if @goal.user_id != session['user_id']
      redirect_to "/goals", :notice => "You do not have access to this goal"
    else
      render 'edit'
    end
  end

  def update
     
      @goal = Goal.find_by(id: params[:id])
      @goal.name = params[:name]
      @goal.category_id = params[:category_id]
      @goal.desc = params[:desc]

      if @goal.save
        redirect_to "/goals/#{ @goal.id }"
      else
        render 'edit'
      end
     
  end
  
  def add_checkpoint
    @goal = Goal.find_by(id: params['id'])
    render 'add_checkpoint'
  end
  
  def new_checkpoint
    @goal = Goal.find_by(id: params['id'])
    checkpoint = Checkpoint.new
    checkpoint.name = params['name']
    checkpoint.goal_id = params['id']
    checkpoint.completed = false
    g = Goal.find_by(id: params['id'])
    g.checkpoints += 1
    checkpoint.num = g.checkpoints
    g.save
    checkpoint.save
    
    if g.save && checkpoint.save
      redirect_to "/goals/##{ params['id'] }"
    else
      render 'add_checkpoint'
    end
  end
  
  
  def edit_checkpoint
    goal = Goal.find_by(id: params[:id])
    checkpoint = Checkpoint.find_by(id: params[:cid])
    checkpoint.name = params['name']
    checkpoint.save
    redirect_to "/goals/##{ goal.id }"
  end

  def mark_as_complete
    checkpoint = Checkpoint.find_by(id: params[:cid])
    checkpoint.completed = true
    checkpoint.date = params[:date]
    checkpoint.save
    redirect_to "/goals/##{ params[:id] }"
  end
  
  def add_checkpoint_date
    checkpoint = Checkpoint.find_by(id: params[:cid])
    checkpoint.date = params[:date]
    checkpoint.save
    redirect_to "/goals/##{ params[:id] }"
  end
  
  def destroy_checkpoint
    checkpoint = Checkpoint.find_by(id: params[:cid])
    checkpoint.destroy
    redirect_to "/goals/##{ params[:id] }"
  end
  
  def reset_checkpoints
    Checkpoint.all.each do |checkpoint|
      checkpoint.completed = false
      checkpoint.save
    end
    redirect_to "/goals"
  end
  
  def destroy
    @goal = Goal.find_by(id: params[:id])
    if @goal.user_id != session['user_id']
      redirect_to "/goals", :notice => "You do not have access to this goal"
    else
      @goal = Goal.find_by(id: params[:id])
      @goal.destroy
      redirect_to "/goals"
    end
  end
end
