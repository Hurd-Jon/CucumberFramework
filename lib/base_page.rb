require_relative '../config/test_config'
require 'selenium-webdriver'

class BasePage
  def initialize(driver)
    @driver = driver
  end

  # enter text into a named field
  def enter_field_value(field_name, text)
    input = @driver.find_element(:name => field_name)
    input.send_keys(text)
  end

  # find a link with the specified text and click it
  def click_link(text)
    @driver.find_element(:link => text).click()
  end

  # submit a named form 
  def submit_form(form_name)
    input = @driver.find_element(:name => form_name);
    input.click
  end

  # wait for specifed text to appear on the page - raise error after 10 seconds otherwise
  def verify_text(search_text)
    timeout = ConfigData.instance.settings[:timeout]
    wait = Selenium::WebDriver::Wait.new(:timeout => timeout)
    wait.until { @driver.page_source.include? search_text}    
  end

  # take a look at the text of the page straight away
  # confirm the specified text does not exist
  def verify_no_text_immediate(search_text)
    !(@driver.page_source.include? search_text)
  end  

  # wait for a named element to appear on the page - raise error after configured timeout otherwise
  def verify_element(element_name)
    timeout = ConfigData.instance.settings[:timeout]
    wait = Selenium::WebDriver::Wait.new(:timeout => timeout)
    wait.until { @driver.find_element(:id => element_name) }
  end

end