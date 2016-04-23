Feature: Speaker Crud

Scenario: Viewing Speakers
  Given a speaker exists
  And another speaker exists
  When I go to the speakers page
  Then I should see a list of speakers

Scenario: Viewing a Speaker
  Given a speaker exists
  When I go to the speakers page
  And I show a speaker
  Then I should see a particular speaker

Scenario: Creating an Speaker
  When I go to the speakers page
  And I make a new speaker
  And I fill in the create speaker form
  Then I should be on the speakers page
  And I should see the new speaker
  And I should see a create speaker success notification

Scenario: Updating an Speaker
  Given a speaker exists
  When I go to the speakers page
  And I edit a speaker
  And I change the speaker information
  Then I should be on the speakers page
  And I should see the updated speaker
  And I should see a update speaker success notification

Scenario: Destroying an Speaker
  Given a speaker exists
  When I go to the speakers page
  And I destroy a speaker
  Then I should be on the speakers page
  And my speaker should be gone
  And I should see a destroyed speaker success notification
