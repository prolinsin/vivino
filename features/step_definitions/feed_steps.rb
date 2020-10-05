require_relative '../pages/feed_page.rb'

feed_page = FeedPage.new @driver

When(/^I click register now$/) do
  feed_page.click_on_register
end

And(/^I have all available register options$/) do
  feed_page.all_register_options_exists
end