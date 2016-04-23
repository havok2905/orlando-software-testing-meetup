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
class Event < ActiveRecord::Base
  has_many :event_speakers
  has_many :speakers, through: :event_speakers

  scope :upcoming, -> { last }
  scope :last_occurred, -> { last }
end
