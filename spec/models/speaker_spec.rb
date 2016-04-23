# == Schema Information
#
# Table name: speakers
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  twitter    :string
#  github     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Speaker, type: :model do
  describe 'associations' do
    it { should have_many(:events) }
    it { should have_many(:event_speakers) }
  end
end
