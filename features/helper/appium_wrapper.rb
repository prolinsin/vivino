class AppiumWrapper
  def click(selector, name)
    find_element(selector, name).click
  end

  def click_element(element)
    element.click
  end

  def get_text(selector, name)
    find_element(selector, name).text
  end

  def find_element(selector, name)
    wait_for_element(selector, name)
    @driver.find_element(:"#{selector}", name)
  end

  def find_elements(selector, name)
    @driver.find_elements(:"#{selector}", name)
  end

  def swipe(start_x, start_y, end_x, end_y, duration)
    Appium::TouchAction.new.swipe(start_x: start_x , start_y: start_y, end_x: end_x, end_y: end_y, duration: duration).perform
  end

  def swipe_alternative(start_x, start_y, end_x, end_y, wait_after_swipe)
    Appium::TouchAction.new.press({x: start_x, y: start_y}).wait(wait_after_swipe).move_to({x: end_x, y: end_y}).release.perform
  end

  def touch_by_coordinates(x_coordinates, y_coordinates, count)
    Appium::TouchAction.new.tap(x: x_coordinates, y: y_coordinates, count: count).perform
  end

  def type(selector, name, text)
    wait_for_element(selector, name)
    find_element(selector, name).send_keys(text)
  end

  def wait_for
    Selenium::WebDriver::Wait.new(timeout: 10).until { yield }
  end

  def wait_for_element(selector, name)
    wait_for { @driver.find_element(:"#{selector}", name).displayed? }
  end
end
