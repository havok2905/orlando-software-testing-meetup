Given(/^I go to the events page$/) do
  visit events_path
end

Then(/^I should be on the events page$/) do
  expect(current_path).to eq events_path
end

When(/^I go to the speakers page$/) do
  visit speakers_path
end

Then(/^I should be on the speakers page$/) do
  expect(current_path).to eq speakers_path
end
