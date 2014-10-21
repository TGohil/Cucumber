#Given(/^I am on the Amazon homepage$/) do
#  
#end
#
#When(/^I enter "(.*?)" in the search box$/) do |search_term|
#  
#end
#
#When(/^I hit go$/) do
#  
#end
#
#Then(/^I should see the results$/) do
#  
#end
#
#Then(/^The first one contains "(.*?)"$/) do |word|
#  text = @b.ul(:id, "s-results-list-atf").when_present.lis.first.text
#  expect(text).to include(word)
#end


Given(/^I am visiting the Amazon homepage$/) do
  @b.goto "amazon.co.uk"
end

When(/^I enter "(.*?)"$/) do |search_term|
  @b.text_field(:id, "twotabsearchtextbox").set search_term
end

When(/^I press the search button$/) do
  @b.button(:class, "nav-submit-input").when_present.click
end

Then(/^I should see the results$/) do
  expect(@b.div(:id, "atfResults").when_present.lis.size).to be > 0
end

Then(/^The first one contains "(.*?)"$/) do |word|
  text = @b.div(:id, "atfResults").when_present.lis.first.text
  expect(text).to include(word)
end