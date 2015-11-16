class BasePage
  def initialize(driver)
    @driver = driver
  end

  # enter text into a named field
  def enter_field_value(field_name, text)
    input = @driver.find_element(:name => field_name);
    input.send_keys(text)
  end

  # submit a named form 
  def submit_form(form_name)
    input = @driver.find_element(:name => form_name);
    input.click
  end

  # wait for specifed text to appear on the page - raise error after 10 seconds otherwise
  def verify_text(search_text)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.page_source.include? search_text}    
  end

  # wait for a named element to appear on the page - raise error after 10 seconds otherwise
  def verify_element(element_name)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.find_element(:id => element_name) }
  end

end