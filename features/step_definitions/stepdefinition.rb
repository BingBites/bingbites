require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

When(/^I click on the "([^"]*)" button to sign up$/) do |button|
  click_button "Sign Up"
end

When(/^I click on the "([^"]*)" button to Login/) do |button|
  click_button "Sign In"
end

