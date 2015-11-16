require_relative '../../config/test_config'

Given(/^I can open the Login page$/) do
	url = ConfigData.instance.settings[:base_url]
	@login_page = LoginPage.new(@browser.navigate_to(url))
    @login_page.verify_element('main')
end

When(/^I login as  "([^"]*)" with password "([^"]*)"$/) do |user_name, password|
  @login_page.enter_field_value('email', user_name)
  @login_page.enter_field_value('password', password)
  @login_page.submit_form('submit')
end

Then(/^I should see "([^"]*)"$/) do |search_text|
  @login_page.verify_text(search_text)
end