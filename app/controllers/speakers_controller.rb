# Controller around handling the Speaker crud and display pages
class SpeakersController < ApplicationController
  include Speakerable

  helper_method :speakers
  helper_method :speaker

  def index
  end

  def show
  end

  def new
  end

  def create
    if speaker.save
      flash[:notice] = 'Successfully created speaker'
    else
      flash[:error] = 'Failed to create speaker'
    end

    redirect_to speakers_path
  end

  def edit
  end

  def update
    if speaker.update_attributes speaker_params
      flash[:notice] = 'Successfully updated speaker'
    else
      flash[:error] = 'Failed to update speaker'
    end

    redirect_to speakers_path
  end

  def destroy
    if speaker.destroy
      flash[:notice] = 'Successfully destroyed speaker'
    else
      flash[:error] = 'Failed to destroy speaker'
    end

    redirect_to speakers_path
  end
end
