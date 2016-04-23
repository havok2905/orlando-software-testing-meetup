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

FactoryGirl.define do
  factory :event do
    name Faker::Lorem.sentence
    description Faker::Lorem.sentence
    link 'http://www.meetup.com/Orlando-Software-Testing-Meetup/events/229461528/'
    date Time.zone.now
  end
end
