class SearchPage < AbstractPage
  @@assert = Asserts.new @driver
  @@name_search_bar = 'search_vivino'
  @@name_search = 'editText_input'
  @@name_wine_list = 'listviewWineListActivity'
  @@name_back_image = 'background_image'
  @@text_browser_wine = 'Browse Wines'
  @@text_wine_title = 'Dessert'
  @@xpath_wine_list = '//android.widget.FrameLayout'

  def check_for_search_bar
    find_element('id', @@name_search_bar)
  end

  def check_for_title
    @@assert.finds_exact_text(@@text_browser_wine)
  end

  def tap_on_search_bar
    click('id', @@name_search_bar)
  end

  def search_for_wine(wine_type)
    type('id', @@name_search, wine_type)
  end

  def wine_list
    find_element('id', @@name_wine_list).find_elements('xpath', @@xpath_wine_list)
  end

  def scroll_down_to_dessert_wine
    swipe(0.5, 0.8, 0.5, 0.2, 500)
  end

  def click_on_dessert_wine
    dessert_wine = find_elements('id', @@name_back_image)[4]
    click_element(dessert_wine);
  end

  def check_if_on_dessert_page
    @@assert.finds_exact_text(@@text_wine_title)
  end
end
