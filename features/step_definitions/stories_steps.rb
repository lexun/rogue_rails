Given(/^I am in the Storyindex$/) do
  visit('/stories')
end

When(/^I click the "(.*?)" button$/) do |arg1|
  click_link('New Story')
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When(/^I press "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should have (\d+) story$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
