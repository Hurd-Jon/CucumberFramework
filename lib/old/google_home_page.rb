class GoogleHomePage < BasePage
  def initialize(driver)
    @driver = driver
  end

  # enter text into the google search box
  # return a google results page object
  def enter_search(search_term)
    input = @driver.find_element(:name => 'q');
    input.send_keys(search_term)
    input.send_keys(:enter)

    GoogleResultsPage.new(@driver)
  end
  
end