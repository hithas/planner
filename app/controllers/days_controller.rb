class DaysController < ApplicationController

  def index
    @days = Day.all
  end

  def show
    @day = Day.find_by(id: params[:id])
  end

  def new
  end

  def create
    @day = Day.new
    @day.date = params[:date]
    @day.weekday = params[:weekday]

    if @day.save
      redirect_to "/days/#{ @day.id }"
    else
      render 'new'
    end
  end

  def edit
    @day = Day.find_by(id: params[:id])
  end

  def update
    @day = Day.find_by(id: params[:id])
    @day.date = params[:date]
    @day.weekday = params[:weekday]

    if @day.save
      redirect_to "/days/#{ @day.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @day = Day.find_by(id: params[:id])
    @day.destroy


    redirect_to "/days"
  end
end
