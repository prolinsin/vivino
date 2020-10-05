class AbstractPage < AppiumWrapper
  include PageObject
  attr_accessor :driver

  def initialize(driver)
    @driver = driver
  end
end
