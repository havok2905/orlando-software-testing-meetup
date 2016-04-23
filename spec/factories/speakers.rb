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

FactoryGirl.define do
  factory :speaker do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.email
    twitter 'http://www.twitter.com'
    github 'http://github.com'
  end
end
