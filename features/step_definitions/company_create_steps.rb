When(/^I login with valid user$/) do
   true
end


When(/^I am on "(.*?)" page$/) do |page_name|
    visit path_to(page_name)
end

When(/^I enter "(.*?)" as a company name in the "(.*?)" box$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When(/^I click "(.*?)" button$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)" message$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)" on page$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
