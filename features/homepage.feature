Feature: BINGBITES HOMEPAGE

  As a user 
    So that I can get an overview of the product, team members, social connect.
Background:
  Given I am on the home page

Scenario: Go to HomePage
  When I click on the BingBites
  Then I should be on the home page
  And I should see the Welcome message

Scenario: Product description
  Then I should see the product info

Scenario: Team members
  Then I should see The Team

Scenario: Social Connect
  Then I should see the social connect
    
Scenario: Visiting the Sign In page
  Then I should see the "twitter" button

Scenario: Signing in with Twitter
  When I click on "Twitter"
  Then I should be signed in