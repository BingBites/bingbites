Feature: Homepage for Bing Bites
  
  As a user 
  So that I can get an overview of the product, team members, social connect.

Scenario: Goto HomePage
   Given I am on the home page
   And I click on the "BingBites"
   Then I should see the "BingBites" homepage


Scenario: Product description
   Given I am on the home page
   And I press the "product desc" 
   Then I should see the "product info"

Scenario: Team members
   Given I am on the home page
   And I press the "team members"
   Then I should see the "team members"

Scenario: Social Connect
   Given I am on the home page
   And I press the "Social Websites" 
   Then I should see "Redirected to social networking website"

Scenario: Footer
   Given I am on the home page 
   Then I should see the "Contact Us" and "policies info message"

Scenario: Sign Up
   Given I am on the home page
   And I press the "Sign Up"
   Then I should see "Redirected to the sign up page"

Scenario: Sign In
   Given I am on the home page
   And I press the "Sign In"
   Then I should see "Redirected to the sign In page"


