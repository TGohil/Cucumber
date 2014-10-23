Feature: Search Google
  As an avid internet user
  I want to search google
  So that I can find the things I want
  
  -Must look and feel like a google product
  -Must have good performance, as defined in the performance standard


Scenario: Search for a simple form
  Given I'm on the google homepage
  When I enter "Hello" into the search box
  And I press go
  Then I should see some results
  And the first one should contain "Hello"