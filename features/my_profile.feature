@profile
Feature: As a user I want to use my profile page

  @regression
  Scenario: When I tap on profile icon in menu, I should see text for new bottle image
    Given I land on Home screen
    When I tap on "my_profile_tab"
    Then I see "My Profile" title
    And I see text for new wine scan

  @smoke
  Scenario: When I tap on profile icon in menu, I take new wine picture
    Given I land on Home screen
    When I tap on "my_profile_tab"
    And I see "My Profile" title
    And I click on camera button
    Then I take picture of wine
