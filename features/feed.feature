@feed @smoke @regression
Feature: As a user I want to check feed page
  Scenario: When I tap on feed icon in menu, I should see feed features
    Given I land on Home screen
    And I tap on "feed_tab"
    And I see "Friends" title
    When I click register now
    Then I see "action_bar"
    And I have all available register options