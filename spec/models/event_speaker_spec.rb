# == Schema Information
#
# Table name: event_speakers
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  speaker_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_event_speakers_on_event_id    (event_id)
#  index_event_speakers_on_speaker_id  (speaker_id)
#

require 'rails_helper'

RSpec.describe EventSpeaker, type: :model do
  describe 'associations' do
    it { should belong_to(:event) }
    it { should belong_to(:speaker) }
  end
end
