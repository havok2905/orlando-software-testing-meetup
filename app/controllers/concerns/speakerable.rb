# Handles CRUD actions for all Events
module Speakerable
  extend ActiveSupport::Concern

  private

  def speaker_params
    params.require(:speaker).permit(:first_name, :last_name, :email, :twitter, :github)
  end

  def speakers
    @speakers ||= all_speakers
  end

  def speaker
    @event ||= (found_speaker || new_speaker || blank_speaker || nil)
  end

  def all_speakers
    actions = %w(index)
    return unless actions.include? current_action
    Speaker.all
  end

  def found_speaker
    actions = %w(show edit update destroy)
    return unless actions.include? current_action
    Speaker.find(params[:id])
  end

  def blank_speaker
    actions = %w(new)
    return unless actions.include? current_action
    Speaker.new
  end

  def new_speaker
    actions = %w(create)
    return unless actions.include? current_action
    Speaker.new speaker_params
  end
end
