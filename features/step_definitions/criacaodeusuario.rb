
When(/^visit "(.*?)"$/) do |arg1|
  visit("/users/sign_in")
end

When(/^I fill in "(.*?)" with  "(.*?)"$/) do |arg1, arg2|
   fill_in("Email", :with => arg2)
end


When(/^click link "(.*?)"$/) do |arg1|
  
end

Then(/^expect\(page\)\.to have_content "(.*?)"$/) do |arg1|
  
end