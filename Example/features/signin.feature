  Feature: Sign up
  Sign up should be quick and friendly
  
  Scenario: Successful sign up
    New users should get a confirmation email and be greeted personaly by the site once signed up
    
  Given I have chsen to sign up
  When I sign up with valid details
  Then I should receive a confirmation email
  And I should see a personalised greeting message
    
#  Scenario: Duplicate email
#    Where omeone tries to create an account for an email address that already exists
#	
#	Given I have chosen to sign up
#	But I enter an email that has already registered
#	Then I should be tld that the email is already registered
#	And I should be offered the option to recover my password


