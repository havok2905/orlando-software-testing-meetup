# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  link        :string
#  date        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'associations' do
    it { should have_many(:speakers) }
    it { should have_many(:event_speakers) }
  end

  describe 'scopes' do
    describe 'upcoming' do
    end

    describe 'last_occurred' do
    end
  end
end
