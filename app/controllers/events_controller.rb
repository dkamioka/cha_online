class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(events_params)
    @event.save
  end

  private
  def events_params
    params.require(:event).permit(:name, :date)
  end
end
