class EventsController < ApplicationController
  def index
    puts "render index page"
    @events = Event.all
  end
  def new
    @event = Event.new
  end
  def show
    @events = Event.all
  end
  def create
    @event = Event.new event_params
    if @event.save
      flash[:success] = "Register event success"
      redirect_to events_path
    else
      flash[:success] = "Register event failed"
      render :new
    end
  end

  def destroy
  end
  private
  def event_params
    puts params
    params.require(:event).permit :name, :created_by, :start, :end
  end
end
