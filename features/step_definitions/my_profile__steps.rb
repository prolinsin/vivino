require_relative '../pages/my_profile_page.rb'

profile_page = ProfilePage.new @driver

And(/^I see text for new wine scan$/) do
  profile_page.check_for_text
end

And(/^I click on camera button$/) do
  profile_page.click_on_camera
end

Then(/^I take picture of wine$/) do
  profile_page.camera_on_and_click
end
