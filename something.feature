Feature: Invoices

  Background:
    Given I am signed in as an admin
    And have existing invoice details

  Scenario: Create an invoice
    Given I am on the admin invoices page
    And I see the client details
    When the invoice has been submitted with an ID
    Then I should no longer see the client on the admin invoices page
