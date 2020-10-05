class FeedPage < AbstractPage
  @@name_facebook = 'fbRegistration_Layout'
  @@name_google = 'googleRegistration_Layout'
  @@name_email = 'emailRegistration_Layout'
  @@name_register_now = 'register_now'

  def click_on_register
    click('id', @@name_register_now)
  end

  def all_register_options_exists
    find_element('id', @@name_facebook)
    find_element('id', @@name_google)
    find_element('id', @@name_email)
  end
end
