require_relative '../pages/menu_page.rb'

menu_page = MenuPage.new @driver

When(/^I swipe "([^"]*)" "([^"]*)" times$/) do |direction, number_of_swipes|
  menu_page.swipe_to_side(direction, number_of_swipes)
end

And(/^I tap on "([^"]*)" icon$/) do |icon|
  menu_page.click_on(icon)
end