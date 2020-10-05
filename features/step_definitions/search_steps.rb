require_relative '../pages/search_page.rb'

search_page = SearchPage.new @driver

And('I see search bar') do
  search_page.check_for_search_bar
end

And('I see page title') do
  search_page.check_for_title
end

When(/^I tap on search bar$/) do
  search_page.tap_on_search_bar
end

And(/^I type "([^"]*)" in search bar$/) do |wine_type|
  search_page.search_for_wine(wine_type)
end

Then(/^I should see wines as search result$/) do
  search_page.wine_list
end

Then(/^I scroll down to Dessert wines$/) do
  search_page.scroll_down_to_dessert_wine
end

And(/^I click on Dessert wine$/) do
  search_page.click_on_dessert_wine
end

And(/^I am on Dessert wine pageS$/) do
  search_page.check_if_on_dessert_page
end