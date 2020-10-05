@shop
Feature: As a user I want to browse vivino shop

  @smoke
  Scenario: When I tap on shop icon in menu, I should see shopping features
    Given I land on Home screen
    When I tap on "top_list_tab"
    Then I see "Top List" title