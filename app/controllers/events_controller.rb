class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create

    @event = Event.new(event_params)
    
    if @event.save
      redirect_to root_path
    else 
      render "events/new"
      flash[:notice] = "全ての項目に記入してください。"
    end
  end

  def index
    @events = Event.all.order(created_at: :desc)
  end

  
  private
  
  def event_params
    params.require(:event).permit(:name, :language, :email, :grade)
  end
  
end
