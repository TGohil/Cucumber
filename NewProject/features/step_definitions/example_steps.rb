# Step Definitions

Given(/^I'm on the google homepage$/) do
  @b.goto "google.com"
end

When(/^I enter "(.*?)" into the search box$/) do |search_term|
  @b.text_field(:id, "gbqfq").set search_term
end

When(/^I press go$/) do
  @b.button(:id, "gbqfb").when_present.click
end

Then(/^I should see some results$/) do
	
  expect(@b.ol(:id, "rso").when_present.lis.size).to be > 0
end

Then(/^the first one should contain "(.*?)"$/) do |word|
  text = @b.ol(:id, "rso").when_present.lis.first.text.downcase
  expect(text).to include(word.downcase)
end