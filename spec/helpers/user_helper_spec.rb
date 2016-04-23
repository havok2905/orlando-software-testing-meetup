require 'rails_helper'

RSpec.describe UserHelper, type: :helper do
  describe 'full_name' do
    it 'should combine the first and last names of a user' do
      user = build :speaker, first_name: 'foo', last_name: 'bar'
      result = helper.full_name(user)
      expect(result).to eq 'foo bar'
    end
  end
end
