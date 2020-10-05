class ProfilePage < AbstractPage
  @@name_guide = 'guide'
  @@name_cammera_button = 'cameraCaptureButton'
  @@name_cammera_wrapper = 'fab'
  @@text_on_profile_page = 'Got a bottle or wine list?'
  @@xpath_cammera = '//android.widget.ImageButton'

  def check_for_text
    assert = Asserts.new @driver
    assert.finds_exact_text(@@text_on_profile_page)
  end

  def camera_on_and_click
    find_element('id', @@name_guide)
    click('id', @@name_cammera_button)
  end

  def click_on_camera
    camera = find_element('id', @@name_cammera_wrapper).find_element('xpath', @@xpath_cammera)
    click_element(camera)
  end

end