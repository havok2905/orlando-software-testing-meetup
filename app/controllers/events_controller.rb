# Controller around handling the Event crud and display pages
class EventsController < ApplicationController
  include Eventable

  helper_method :events
  helper_method :event
  helper_method :speakers_for_events

  def index
  end

  def show
  end

  def new
  end

  def create
    if event.save
      flash[:notice] = 'Successfully created event'
    else
      flash[:success] = 'Failed to create event'
    end

    redirect_to events_path
  end

  def edit
  end

  def update
    if event.update_attributes event_params
      flash[:notice] = 'Successfully updated event'
    else
      flash[:success] = 'Failed to update event'
    end

    redirect_to events_path
  end

  def destroy
    if event.destroy
      flash[:notice] = 'Successfully destroyed event'
    else
      flash[:success] = 'Failed to destroy event'
    end

    redirect_to events_path
  end
end
