require 'appium_lib'
require 'pry'
require 'page-object'

def caps
  { caps:
    {
      deviceName: 'Anyname',
      platformName: 'Android',
      app: File.join(File.dirname(__FILE__), 'app-world-beta (1).apk'),
      appPackage: 'vivino.web.app.beta',
      appActivity: 'com.sphinx_solution.fragmentactivities.MainActivity',
      newCommandTimeout: '3600',
      autoGrantPermissions: true
    } }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
