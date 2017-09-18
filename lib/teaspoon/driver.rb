require "teaspoon/registry"
require "teaspoon/registry/has_default"

module Teaspoon
  module Driver
    extend Teaspoon::Registry
    extend Teaspoon::Registry::HasDefault

    not_found_in_registry Teaspoon::UnknownDriver
  end
end

Teaspoon::Driver.register(:phantomjs, "Teaspoon::Driver::Phantomjs", "teaspoon/driver/phantomjs", default: true)
Teaspoon::Driver.register(:selenium, "Teaspoon::Driver::Selenium", "teaspoon/driver/selenium")
Teaspoon::Driver.register(:browserstack, "Teaspoon::Driver::BrowserStack", "teaspoon/driver/browserstack")
Teaspoon::Driver.register(:capybara_webkit, "Teaspoon::Driver::CapybaraWebkit", "teaspoon/driver/capybara_webkit")
Teaspoon::Driver.register(:chrome_headless, "Teaspoon::Driver::ChromeHeadless", "teaspoon/driver/chrome_headless")
