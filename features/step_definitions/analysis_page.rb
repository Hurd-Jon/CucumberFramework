When(/^I select the Analysis link$/) do 
 @page.click_link("Analysis")
 @page.verify_text("KPI Analysis")
end

When(/^I can see "([^"]*)"$/) do |search_text|
  @page.verify_text(search_text)
end

Then(/^I see no exceptions$/) do
  @page.verify_no_text_immediate('exception')
end

Then(/^I see no errors$/) do
  @page.verify_no_text_immediate('error')
end