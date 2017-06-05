When(/^I click on the BingBites$/) do
  click_link('BingBites')
end

Then(/^I should see the Sign Up button$/) do
  expect{ click_button "Sign Up" }
end

Then(/^I should see the Welcome message$/) do
  expect(page).to have_content("Welcome to BingBites")
end

Then (/^I should see the product info$/) do
  expect(page).to have_content("amazing experiences")
end

Then (/I should see The Team$/) do
  expect(page).to have_content("The Team")
end

Then (/I should see The Newsletter Sign Up/) do
  expect(page).to have_content("Get started with BingBites")
end

Then(/^I should see the social connect$/) do
  expect{ click_button "Social connect symbols" }
end

Then (/^I should see the "([^"]*)" button/) do |name|
  find_by_id(name).should_not be_nil
end