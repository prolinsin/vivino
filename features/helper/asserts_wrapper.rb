class Asserts
  include PageObject
  attr_accessor :driver

  def initialize(driver)
    @driver = driver
  end

  def finds_exact_text(text)
    @driver.finds_exact(text)
  end
end
