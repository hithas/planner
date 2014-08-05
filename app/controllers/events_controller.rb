class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by(id: params[:id])
  end

  def new
  end

  def create
    @event = Event.new
    @event.start_time = params[:start_time]
    @event.end_time = params[:end_time]
    @event.category_id = params[:category_id]
    @event.day_id = params[:day_id]
    @event.desc = params[:desc]
    @event.timespan = params[:timespan]

    if @event.save
      redirect_to "/events/#{ @event.id }"
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find_by(id: params[:id])
  end

  def update
    @event = Event.find_by(id: params[:id])
    @event.start_time = params[:start_time]
    @event.end_time = params[:end_time]
    @event.category_id = params[:category_id]
    @event.day_id = params[:day_id]
    @event.desc = params[:desc]
    @event.timespan = params[:timespan]

    if @event.save
      redirect_to "/events/#{ @event.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy


    redirect_to "/events"
  end
end
