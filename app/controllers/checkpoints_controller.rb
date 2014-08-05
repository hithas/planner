class CheckpointsController < ApplicationController

  def index
    @checkpoints = Checkpoint.all
  end

  def show
    @checkpoint = Checkpoint.find_by(id: params[:id])
  end

  def new
  end

  def create
    @checkpoint = Checkpoint.new
    @checkpoint.name = params[:name]
    @checkpoint.goal_id = params[:goal_id]
    @checkpoint.num = params[:num]
    @checkpoint.completed = params[:completed]

    if @checkpoint.save
      redirect_to "/checkpoints/#{ @checkpoint.id }"
    else
      render 'new'
    end
  end

  def edit
    @checkpoint = Checkpoint.find_by(id: params[:id])
  end

  def update
    @checkpoint = Checkpoint.find_by(id: params[:id])
    @checkpoint.name = params[:name]
    @checkpoint.goal_id = params[:goal_id]
    @checkpoint.num = params[:num]
    @checkpoint.completed = params[:completed]

    if @checkpoint.save
      redirect_to "/checkpoints/#{ @checkpoint.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @checkpoint = Checkpoint.find_by(id: params[:id])
    @checkpoint.destroy


    redirect_to "/checkpoints"
  end
end
