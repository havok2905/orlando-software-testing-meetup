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
class Speaker < ActiveRecord::Base
  has_many :event_speakers
  has_many :events, through: :event_speakers
end
