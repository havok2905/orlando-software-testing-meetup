Given(/^a speaker exists$/) do
  FactoryGirl.create :speaker, {
    first_name: 'Eric',
    last_name:  'Colon',
    email:      'example@example.com',
    twitter:    'https://www.twitter.com/example',
    github:     'https://www.github.com/example'
  }
end

Given(/^another speaker exists$/) do
  FactoryGirl.create :speaker, {
    first_name: 'John',
    last_name:  'Li',
    email:      'example2@example2.com',
    twitter:    'https://www.twitter.com/example2',
    github:     'https://www.github.com/example2'
  }
end

Then(/^I should see a list of speakers$/) do
  expect(page).to have_content 'Eric'
  expect(page).to have_content 'Colon'
  expect(page).to have_content 'example@example.com'
  expect(page).to have_content 'https://www.twitter.com/example'
  expect(page).to have_content 'https://www.github.com/example'

  expect(page).to have_content 'John'
  expect(page).to have_content 'Li'
  expect(page).to have_content 'example2@example2.com'
  expect(page).to have_content 'https://www.twitter.com/example2'
  expect(page).to have_content 'https://www.github.com/example2'
end

When(/^I show a speaker$/) do
  click_link 'show', match: :first
end

Then(/^I should see a particular speaker$/) do
  expect(page).to have_content 'Eric'
  expect(page).to have_content 'Colon'
end

When(/^I make a new speaker$/) do
  click_link 'New Speaker'
end

When(/^I fill in the create speaker form$/) do
  fill_in 'speaker[first_name]', with: 'Chris'
  fill_in 'speaker[last_name]', with: 'McLean'
  fill_in 'speaker[email]', with: 'example3@example3.com'
  fill_in 'speaker[twitter]', with: 'https://www.twitter.com/example3'
  fill_in 'speaker[github]', with: 'https://www.github.com/example3'
  click_button 'Create Speaker'
end

Then(/^I should see the new speaker$/) do
  expect(page).to have_content 'Chris'
  expect(page).to have_content 'McLean'
  expect(page).to have_content 'example3@example3.com'
  expect(page).to have_content 'https://www.twitter.com/example3'
  expect(page).to have_content 'https://www.github.com/example3'
end

Then(/^I should see a create speaker success notification$/) do
  expect(page).to have_content 'Successfully created speaker'
end

When(/^I edit a speaker$/) do
  click_link 'edit', match: :first
end

When(/^I change the speaker information$/) do
  fill_in 'speaker[first_name]', with: 'oof'
  fill_in 'speaker[last_name]', with: 'rab'
  fill_in 'speaker[email]', with: 'example4@example4.com'
  fill_in 'speaker[twitter]', with: 'https://www.twitter.com/example4'
  fill_in 'speaker[github]', with: 'https://www.github.com/example4'
  click_button 'Update Speaker'
end

Then(/^I should see the updated speaker$/) do
  expect(page).to have_content 'oof'
  expect(page).to have_content 'rab'
  expect(page).to have_content 'example4@example4.com'
  expect(page).to have_content 'https://www.twitter.com/example4'
  expect(page).to have_content 'https://www.github.com/example4'
end

Then(/^I should see a update speaker success notification$/) do
  expect(page).to have_content 'Successfully updated speaker'
end

When(/^I destroy a speaker$/) do
  click_link 'delete', match: :first
end

Then(/^my speaker should be gone$/) do
  expect(page).not_to have_content 'Eric'
  expect(page).not_to have_content 'Colon'
  expect(page).not_to have_content 'example@example.com'
  expect(page).not_to have_content 'https://www.twitter.com/example'
  expect(page).not_to have_content 'https://www.github.com/example'
end

Then(/^I should see a destroyed speaker success notification$/) do
  expect(page).to have_content 'Successfully destroyed speaker'
end
