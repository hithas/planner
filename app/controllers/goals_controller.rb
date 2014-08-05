class GoalsController < ApplicationController

  def index
    @goals = Goal.all
  end

  def show
    @goal = Goal.find_by(id: params[:id])
  end

  def new
  end

  def create
    @goal = Goal.new
    @goal.name = params[:name]
    @goal.category_id = params[:category_id]
    @goal.checkpoints = 0

    if @goal.save
      redirect_to "/goals/#{ @goal.id }"
    else
      render 'new'
    end
  end

  def edit
    @goal = Goal.find_by(id: params[:id])
  end

  def update
    @goal = Goal.find_by(id: params[:id])
    @goal.name = params[:name]
    @goal.category_id = params[:category_id]

    if @goal.save
      redirect_to "/goals/#{ @goal.id }"
    else
      render 'edit'
    end
  end
  
  def new_checkpoint
    checkpoint = Checkpoint.new
    checkpoint.name = params['name']
    checkpoint.goal_id = params['id']
    Goal.find_by(id: params['id']).checkpoints += 1
  end

  def destroy
    @goal = Goal.find_by(id: params[:id])
    @goal.destroy


    redirect_to "/goals"
  end
end
