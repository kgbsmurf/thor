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

Scenario: successfully create valid LBD Page in existing company
    When I access company "Dinamo"
    When I click on "Add LBD Page" link
    Then I should see "Add LBD Page" heading
    And I enter "Example Dinamo LBD Page" in the "Name" box
    And I click "Create LBD Page" button
    Then I should see "created successfully" message
    And I should see "Example Dinamo LBD Page" heading
