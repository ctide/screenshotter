require 'headless'
require 'selenium-webdriver'

module Screenshotter
  class Main
    def self.create_screenshot(width)
      @@driver.manage.window.resize_to(width, 200);
      sleep 1

      filename = @@url.gsub(/[^0-9A-Za-z.\-]/, '_')
      @@driver.save_screenshot("#{filename}-#{width}.png")
    end

    def self.run!(url)
      @@url = url
      headless = Headless.new
      headless.start

      @@driver = Selenium::WebDriver.for(:firefox)
      @@driver.navigate.to @@url

      Main.create_screenshot(640)
      Main.create_screenshot(1024)
      Main.create_screenshot(1600)

      @@driver.quit
    end
  end
end
