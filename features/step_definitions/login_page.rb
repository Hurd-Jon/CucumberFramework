require_relative '../../config/test_config'

Given(/^I can open the Login page$/) do
	url = ConfigData.instance.settings[:base_url]
	@page = StandardPage.new(@browser.navigate_to(url))
    @page.verify_element('main')
end

When(/^I login as  "([^"]*)" with password "([^"]*)"$/) do |user_name, password|
  @page.enter_field_value('email', user_name)
  @page.enter_field_value('password', password)
  @page.submit_form('submit')
end

Then(/^I should see "([^"]*)"$/) do |search_text|
  @page.verify_text(search_text)
end