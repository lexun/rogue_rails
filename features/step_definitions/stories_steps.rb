Given(/^I am in the Storyindex$/) do
  @num_stories = Story.count
  visit('/stories')
end

When(/^I click the "(.*?)" button$/) do |arg1|
  click_link('New Story')
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button arg1
end

When(/^I select "(.*?)" from "(.*?)"$/) do |arg1, arg2|
  select(arg1, :from => arg2)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content(arg1)
end

Then(/^Story count should increment by (\d+)$/) do |arg1|
  Story.count.should == @num_stories + arg1.to_i
end
