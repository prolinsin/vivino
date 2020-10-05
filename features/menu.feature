@menu
Feature: As a user I want to browse vivino shop

  @regression
  Scenario: When I tap on shop icon in menu, I should see shopping features
    Given I land on Home screen
    And I tap on "top_list_tab"
    And I see "Top List" title
    When I swipe "right" "2" times
    Then I see "Friends" title
    When I swipe "left" "1" times
    Then I see "Search" title

  @smoke
  Scenario Outline: When I click on icons in topbar, I want to go to selected pages
    Given I land on Home screen
    And I tap on "<icon>" icon
    Then I see "<header>"
    And I see "<page>" title
    Examples:
      | icon                 | page          | header      |
      | action_notifications | Notifications | action_bar  |
      | settings             | Settings      | action_bar  |
      | help                 | Help          | hs__toolbar |