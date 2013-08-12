Feature: add LBD Page to my Company

    As a registered and logged in user
    So I can be listed in the Builder Directory
    I want to page in my company

Background: user logged in and registered
    When I login with valid user
    And I access company "Dinamo"

Scenario: successfully create valid LBD Page
    When I click on "Add LBD Page" link
    And I enter "Example Dinamo LBD Page" in the "Name" box
    And I click "Create LBD Page" button
    Then I should see "created successfully" message
    And I should see "Example Dinamo LBD Page" heading
