require_relative '../config/test_config'

class Browser
  attr_reader :driver

  def initialize(browser_name)
    @driver = start_browser(browser_name)
    delete_cookies
  end

  def delete_cookies
    @driver.manage.delete_all_cookies
  end

  def move_browser(x_position, y_position)
    x_position ? x_position : x_position = 0
    y_position ? y_position : y_position = 0

    @driver.manage.window.move_to(x_position, y_position)
  end

  def open_login_page()
    url = ConfigData.instance.settings[:base_url]
    @driver.navigate.to(url)
    LoginPage.new(@driver)
  end

  def navigate_to(url)
    @driver.navigate.to(url)
    @driver
  end

  def open_page(url)
    url = ConfigData.instance.settings[:base_url]
    @driver.navigate.to(url)
    LoginPage.new(@driver)

  end  

  def set_timeout(timeout)
    @driver.manage.timeouts.implicit_wait = timeout
  end

  def set_window_size(screen_width, screen_height)
    screen_width   ? screen_width   : screen_width   = 1280
    screen_height  ? screen_height  : screen_height  = 1024

    @driver.manage.window.resize_to(screen_width, screen_height)
  end

  # return the specified browser
  # browser is configures in config/cucumber.yml
  def start_browser(browser)
    case browser
    when 'firefox'
      driver = Selenium::WebDriver.for :firefox
    when 'chrome'
      driver = Selenium::WebDriver.for :chrome
    when 'phantomjs'
      driver = Selenium::WebDriver.for :phantomjs
    else
      driver = Selenium::WebDriver.for :chrome
    end
  end
end