Feature: create company so apps can be added

    As a registered and logged in user
    So I can add my company to the Luxury Builder Directory site
    I want to create company

Background: user logged in and registered
    When I login with valid user

Scenario: successfully create valid company
    When I click on "Create company" link
    And I enter "Dinamo" in the "Name" box
    And I click "Create company" button
    Then I should see "created successfully" message
    And I should see "Dinamo" heading
