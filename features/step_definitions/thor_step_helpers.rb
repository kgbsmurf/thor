When(/^I login with valid user$/) do
  sign_in
end


When(/^I click on "(.*?)" link$/) do |link_name|
    click_link link_name
end

When(/^I enter "(.*?)" in the "(.*?)" box$/) do |name, box|
  fill_in box, with: name
end

When(/^I click "(.*?)" button$/) do |button|
  click_button button
end

Then(/^I should see "(.*?)" message$/) do |message|
  should have_content(message)
end

Then(/^I should see "(.*?)" heading$/) do |message|
  should have_selector("h1", text: message)
end

Then(/^I should see "(.*?)" on page$/) do |message|
  should have_content(message)
end

When(/^I access company "(.*?)"$/) do |company|
  create_company
  should have_selector("h1", text: company)
  
end