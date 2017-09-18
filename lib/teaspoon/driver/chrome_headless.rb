require "teaspoon/driver/selenium"

module Teaspoon
  module Driver
    class ChromeHeadless < Selenium
      protected

      def build_driver
        ::Selenium::WebDriver.for(
          :chrome,
          switches: %w[--headless --disable-popup-blocking --no-sandbox --disable-gpu --window-size=1400,900]
        )
      end
    end
  end
end
