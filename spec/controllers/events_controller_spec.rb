require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  let(:valid_params) do
    {
      event: {
        name: 'foo',
        description: 'bar',
        link: 'http://meetup.com',
        date: Time.zone.now
      }
    }
  end

  let(:invalid_params) { {} }

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
      expect(Event.count).to eq 1
    end

    it 'should create a success message when valid' do
      post :create, valid_params
      expect(flash[:notice]).to be_truthy
    end

    it 'should create a failure message when invalid' do
      # No object validation yet
    end

    it 'should redirect to the events page' do
      post :create, valid_params
      expect(response).to redirect_to events_path
    end
  end

  describe 'edit' do
    # No outgoing messages, state changes, or returns
  end

  describe 'update' do
    before do
      @event = create :event
    end

    it 'should update an event record when valid' do
      post :update, valid_params.merge(id: @event.id)
      @event.reload

      expect(@event.name).to eq valid_params[:event][:name]
      expect(@event.description).to eq valid_params[:event][:description]
      expect(@event.link).to eq valid_params[:event][:link]
      expect(@event.date.to_date).to eq valid_params[:event][:date].to_date
    end

    it 'should create a success message when valid' do
      post :update, valid_params.merge(id: @event.id)
      expect(flash[:notice]).to be_truthy
    end

    it 'should create a failure message when invalid' do
      # No object validation yet
    end

    it 'should redirect to the events page' do
      post :update, valid_params.merge(id: @event.id)
      expect(response).to redirect_to events_path
    end
  end

  describe 'destroy' do
    before do
      @event = create :event
    end

    it 'should destroy an event' do
      post :destroy, id: @event.id
      expect(Event.count).to eq 0
    end

    it 'should create a success message when valid' do
      post :destroy, id: @event.id
      expect(flash[:notice]).to be_truthy
    end

    it 'should create a failure message when invalid' do
      # No object validation yet
    end

    it 'should redirect to the events page' do
      post :destroy, id: @event.id
      expect(response).to redirect_to events_path
    end
  end
end
