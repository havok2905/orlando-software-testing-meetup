# Handles CRUD actions for all Events
module Eventable
  extend ActiveSupport::Concern

  private

  def event_params
    params.require(:event).permit!
  end

  def speakers_for_events
    @events ||= all_speakers_for_events
  end

  def events
    @events ||= all_events
  end

  def event
    @event ||= (found_event || new_event || blank_event || nil)
  end

  def all_speakers_for_events
    actions = %w(new edit)
    return unless actions.include? current_action
    Speaker.all
  end

  def all_events
    actions = %w(index)
    return unless actions.include? current_action
    Event.all
  end

  def found_event
    actions = %w(show edit update destroy)
    return unless actions.include? current_action
    Event.find(params[:id])
  end

  def blank_event
    actions = %w(new)
    return unless actions.include? current_action
    Event.new
  end

  def new_event
    actions = %w(create)
    return unless actions.include? current_action
    Event.new event_params
  end
end
