Feature: Event Crud

Scenario: Viewing Events
  Given an event exists
  And another event exists
  When I go to the events page
  Then I should see a list of events

Scenario: Viewing an Event
  Given an event exists
  When I go to the events page
  And I show an event
  Then I should see a particular event

Scenario: Creating an Event
  When I go to the events page
  And I make a new event
  And I fill in the create event form
  Then I should be on the events page
  And I should see the new event
  And I should see a create event success notification

Scenario: Updating an Event
  Given an event exists
  When I go to the events page
  And I edit an event
  And I change the event information
  Then I should be on the events page
  And I should see the updated event
  And I should see a update event success notification

Scenario: Destroying an Event
  Given an event exists
  When I go to the events page
  And I destroy an event
  Then I should be on the events page
  And my event should be gone
  And I should see a destroyed event success notification
