class MenuPage < AbstractPage
  @@name_content = 'content'
  @@name_toolbar_wrapper = 'tabanim_toolbar'
  @@xpath_dot_wrapper = '//androidx.appcompat.widget.LinearLayoutCompat'
  @@xpath_dot = '//android.widget.ImageView'

  def swipe_to_side(direction, number_of_swipes)
    if direction == 'right'
      number_of_swipes.to_i.times { swipe(0.8, 0.3, 0.1, 0.3, 200) }
    else
      number_of_swipes.to_i.times { swipe(0.1, 0.3, 0.8, 0.3, 200) }
    end
  end

  def click_on(icon)
    if icon != 'action_notifications'
      three_dot = find_element('id', @@name_toolbar_wrapper)
                  .find_element('xpath', @@xpath_dot_wrapper)
                  .find_elements('xpath', @@xpath_dot)[1]
      click_element(three_dot)
      find_elements('id', @@name_content)
      if icon == 'settings'
        click_element(find_elements('id', @@name_content)[0])
      else
        click_element(find_elements('id', @@name_content)[1])
      end
    else
      click('id', icon)
    end
  end
end
