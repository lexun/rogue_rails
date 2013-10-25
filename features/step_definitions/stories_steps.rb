Given(/^I am in the Storyindex$/) do
  visit('/stories')
end

Given(/^I have a story with bv: (\d+), and cv: (\d+)$/) do |bv, cv|
  Story.create!(:value => bv, :complexity => cv, :i_want_to => 'develop this feature', :as_a => 'team member', :in_order_to => 'finish this assignment')
end

When(/^I click the "(.*?)" button$/) do |arg1|
  click_button(arg1)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When(/^I setup to accept the choice$/) do 
	page.evaluate_script('window.confirm = function() { return true; }')
end

When(/^I setup to decline the choice$/) do 
	page.evaluate_script('window.confirm = function() { return false; }')
end

When(/^I select "(.*?)" from "(.*?)"$/) do |arg1, arg2|
  select(arg1, :from => arg2)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content(arg1)
end

Then(/^I should not see "(.*?)"$/) do |arg1|
   page.should_not have_content(arg1)
end

Given(/^I have a story$/) do
  Story.create!(:value => 0, :complexity => 1, :i_want_to => 'develop this feature', :as_a => 'team member', :in_order_to => 'finish this assignment')
end

When(/^I go to the storyindex page$/) do
  visit stories_path
end

When(/^I click the "(.*?)" link$/) do |arg1|
  click_link(arg1)
end

Then(/^I should see the correct score: (\d+)$/) do |score|
  within('.score') do
    page.should have_content(score)
  end
end
