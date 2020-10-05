@search
Feature: As a user I want to search wines

  @smoke
  Scenario: When I tap on search icon in menu, I should see search features
    Given I land on Home screen
    When I tap on "wine_explorer_tab"
    Then I see "Search" title
    And I see search bar
    And I see page title

  @regression
  Scenario Outline: When I search for different type of wine, I should get different results
    Given I land on Home screen
    When I tap on "wine_explorer_tab"
    And I see "Search" title
    When I tap on search bar
    And I type "<search_query>" in search bar
    Then I should see wines as search result
    Examples:
      | search_query |
      | Rose         |
      | Barolo       |
      | Caymus       |

  @regression
  Scenario: When I am on search, I can filter only dessert vines
    Given I land on Home screen
    When I tap on "wine_explorer_tab"
    And I see "Search" title
    Then I scroll down to Dessert wines
    And I click on Dessert wine
    And I am on Dessert wine pageS
