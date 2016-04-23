require 'rails_helper'

RSpec.describe SpeakersController, type: :controller do

  let(:valid_params) {
    {
      speaker: {
        first_name: 'foo',
        last_name: 'bar',
        email: 'example@example.com',
        github: 'http://www.github.com',
        twitter: 'http://www.twitter.com'
      }
    }
  }

  let(:invalid_params) { { } }

  describe 'index' do
    # No outgoing messages, state changes, or returns
  end

  describe 'show' do
    # No outgoing messages, state changes, or returns
  end

  describe 'new' do
    # No outgoing messages, state changes, or returns
  end

  describe 'create' do
    it 'should create a new event record when valid' do
      post :create, valid_params
      expect(Speaker.count).to eq 1
    end

    it 'should create a success message when valid' do
      post :create, valid_params
      expect(flash[:notice]).to be_truthy
    end

    it 'should create a failure message when invalid' do
      # No object validation yet
    end

    it 'should redirect to the speakers page' do
      post :create, valid_params
      expect(response).to redirect_to speakers_path
    end
  end

  describe 'edit' do
    # No outgoing messages, state changes, or returns
  end

  describe 'update' do
    before do
      @speaker = create :speaker
    end

    it 'should update an event record when valid' do
      post :update, valid_params.merge({ id: @speaker.id })
      @speaker.reload

      expect(@speaker.first_name).to eq valid_params[:speaker][:first_name]
      expect(@speaker.last_name).to eq valid_params[:speaker][:last_name]
      expect(@speaker.email).to eq valid_params[:speaker][:email]
      expect(@speaker.twitter).to eq valid_params[:speaker][:twitter]
      expect(@speaker.github).to eq valid_params[:speaker][:github]
    end

    it 'should create a success message when valid' do
      post :update, valid_params.merge({ id: @speaker.id })
      expect(flash[:notice]).to be_truthy
    end

    it 'should create a failure message when invalid' do
      # No object validation yet
    end

    it 'should redirect to the speakers page' do
      post :update, valid_params.merge({ id: @speaker.id })
      expect(response).to redirect_to speakers_path
    end
  end

  describe 'destroy' do
    before do
      @speaker = create :speaker
    end

    it 'should destroy an event' do
      post :destroy, { id: @speaker.id }
      expect(Speaker.count).to eq 0
    end

    it 'should create a success message when valid' do
      post :destroy, { id: @speaker.id }
      expect(flash[:notice]).to be_truthy
    end

    it 'should create a failure message when invalid' do
      # No object validation yet
    end

    it 'should redirect to the speakers page' do
      post :destroy, { id: @speaker.id }
      expect(response).to redirect_to speakers_path
    end
  end
end
