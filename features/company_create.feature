Feature: create company so apps can be added

    As a registered and logged in user
    So I can add my company to the Luxury Builder Directory site
    I want to create company

Background: user logged in and registered
    When I login with valid user

Scenario: successfully create valid company
    When I am on "Create Company" page
    And I enter "Dinamo" as a company name in the "Company name" box
    And I click "Create Company" button
    Then I should see "Company created successfully" message
    And I should see "Dinamo" on page
