class EventsController < ApplicationController
  def index
    puts "render index page"
    @events = Event.all
  end
  def new
    @event = Event.new
  end
  def all
    :show
  end
  def show
    # if !:query
      @events = Event.all
    # else
    # @events = Event.where('start > ?', DateTime.now)
    # end
    #current_name
    #@user_name = @current_user_name
  end
  def add_name
    name = params['user_name']
    set_name name
  end

  def check_box_participation

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
