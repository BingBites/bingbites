Given (/^we are mocking a successful Twitter response$/) do
  OmniAuth.config.test_mode = true
  Capybara.default_host = 'http://localhost:3000/auth/twitter/callback'


 OmniAuth.config.mock_auth[:twitter] = 
 {
    'uid' => '1337',
    'provider' => 'twitter',
    'info' => {
      'name' => 'hi',
      'location' => 'Yoooo',
      'urls' => {'Twitter' => 'xxxx:///xxx'},
      'image_url' => 'jejejr'
      }
  }
end
When (/^I click on "(.*?)"$/) do |link| 
visit root_path
expect(page).to have_link("Twitter")
click_link('one')
end

### THEN ###
Then(/^I should be signed in$/) do
  expect(page).to have_content 'LOG OUT'
  expect(page).to have_content 'AMERICANO'
end

When(/^I click the "(.*?)" link$/) do |link_text|
  click_link 'AMERICANO'
end

Then(/^I should see the Edit button$/) do
    expect{ click_button "Edit" }
    end
    