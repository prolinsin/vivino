require_relative '../../pages/common_page.rb'

common_page = CommonPage.new @driver

Given(/^I land on Home screen$/) do
  common_page.on_home_screen
end

Then(/^I see "([^"]*)" title$/) do |title|
  common_page.finds_text_on_app(title)
end

When(/^I tap on "([^"]*)"$/) do |icon|
  common_page.click_button(icon)
end

Then(/^I see "([^"]*)"$/) do |header_title|
  common_page.action_bar(header_title)
end
