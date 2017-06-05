Feature: EATERIES LISTING PAGE
  
  As a user 
    So that I can see the list of eateries.

Background:
  Given we authenticate with "Twitter" mock api
  And an eatery "Demo Diner" exists in the database
  And I am on the list page

Scenario: Search Bar exists
  Then I should see the Search Bar

Scenario: Events link exists
  Then I should see the "Events" link

Scenario: Nightlife link exists
  Then I should see the "Nightlife" link

Scenario: New Listing link exists
  Then I should see the "New Listing" link

Scenario: Trending link exists
  Then I should see the "Trending" link

Scenario: Deals link exists
  Then I should see the "Deals" link

Scenario: Drive Thru link exists
  Then I should see the "Drive Thru" link

Scenario: Location exists
  Then I should see the Location

Scenario: Categories Exist
  Then I should see the category "MEXICAN"
  And I should see the category "AMERICAN"
  And I should see the category "ASIAN"
  And I should see the category "CONTINENTAL"
  And I should see the category "ITALIAN"
  And I should see the category "DAILY SPECIALITY"
  And I should see the category "ETHNIC"
  And I should see the category "FAST FOOD"
  And I should see the category "CASUAL DINING"
  And I should see the category "FAMILY STYLE"
  And I should see the category "FINE DINING"
  And I should see the category "BARBECUE"
  And I should see the category "CAFE"
  And I should see the category "PUB"

Scenario: Eateries Exist
  Then I should see the eatery "Demo Diner"
  And I should see the address for "Demo Diner"


