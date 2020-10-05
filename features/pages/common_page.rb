class CommonPage < AbstractPage
  @@name_home_screen = 'tabanim_toolbar'

  def on_home_screen
    find_element('id', @@name_home_screen)
  end

  def finds_text_on_app(text)
    assert = Asserts.new @driver
    assert.finds_exact_text(text)
  end

  def click_button(icon)
    click('id', icon)
  end

  def action_bar(title)
    find_element('id', title)
  end
end
