Given(/^an eatery "(.*?)" exists in the database$/) do |eatery|
  @eatery = FactoryGirl.create(:eatery, name: eatery)
end

Then (/^I should see the eatery "([^"]*)"$/) do |eatery|
  expect(page).to have_content eatery.upcase
end

Then (/^I should see the address for "([^"]*)"$/) do |eatery|
  expect(page).to have_content @eatery.address
end

Then (/^I should see the Search Bar$/) do
  expect(page).to have_selector('input', id: 'search')
end

Then (/^I should see the "(.*?)" link$/) do |link|
  expect(page).to have_link(link)
end

Then (/^I should see the Location$/) do
  expect(page).to have_selector('div', id: 'location')
end

Then (/^I should see the category "([^"]*)"$/) do |cat|
  expect(page).to have_content cat
end