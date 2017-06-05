Given (/^we authenticate with "([^"]*)" mock api$/) do |provider|
  visit "auth/#{provider.downcase}/callback"
end

When (/^I click on "(.*?)"$/) do |link| 
  visit root_path
  expect(page).to have_link(link)
  click_link(link)
end

Then (/^I should be signed in$/) do
  expect(page).to have_content "LOG OUT"
end

When (/^press "([^"]*)" button$/) do |button|
  visit eateries_path
  click_link_or_button("LOG OUT")
  response.should redirect_to('/')
end


