Given(/^an event exists$/) do
  FactoryGirl.create :event, {
    name: 'Event Name',
    description: 'Event Description',
    link: 'http://event.link'
  }
end

Given(/^another event exists$/) do
  FactoryGirl.create :event, {
    name: 'Event Name 2',
    description: 'Event Description 2',
    link: 'http://event2.link'
  }
end

Then(/^I should see a list of events$/) do
  expect(page).to have_content 'Event Name'
  expect(page).to have_content 'Event Description'
  expect(page).to have_content 'http://event.link'
  expect(page).to have_content 'Event Name 2'
  expect(page).to have_content 'Event Description 2'
  expect(page).to have_content 'http://event2.link'
end

Given(/^I show an event$/) do
  click_link 'show', match: :first
end

Then(/^I should see a particular event$/) do
  expect(page).to have_content 'Event Name'
  expect(page).to have_content 'Event Description'
end

When(/^I make a new event$/) do
  click_link 'New Event'
end

Given(/^I fill in the create event form$/) do
  fill_in 'event[name]', with: 'Foo'
  fill_in 'event[description]', with: 'Bar'
  fill_in 'event[link]', with: 'http://meetup.com'
  click_button 'Create Event'
end

Then(/^I should see the new event$/) do
  expect(page).to have_content 'Foo'
  expect(page).to have_content 'Bar'
  expect(page).to have_content 'http://meetup.com'
end

Then(/^I should see a create event success notification$/) do
  expect(page).to have_content 'Successfully created event'
end

Given(/^I edit an event$/) do
  click_link 'edit', match: :first
end

Given(/^I change the event information$/) do
  fill_in 'event[name]', with: 'oof'
  fill_in 'event[description]', with: 'rab'
  fill_in 'event[link]', with: 'http://puteem.com'
  click_button 'Update Event'
end

Then(/^I should see the updated event$/) do
  expect(page).to have_content 'oof'
  expect(page).to have_content 'rab'
  expect(page).to have_content 'http://puteem.com'
end

Then(/^I should see a update event success notification$/) do
  expect(page).to have_content 'Successfully updated event'
end

Given(/^I destroy an event$/) do
  click_link 'delete', match: :first
end

Then(/^my event should be gone$/) do
  expect(page).not_to have_content 'Event Name'
  expect(page).not_to have_content 'Event Description'
  expect(page).not_to have_content 'http://event.link'
end

Then(/^I should see a destroyed event success notification$/) do
  expect(page).to have_content 'Successfully destroyed event'
end
