Feature: logging in
	In order to allow only authorized users to view certain content
	As a visitor to the website
	I should be required to log in in order to see sensitive information
	
	Scenario: Visiting logging page
		Given I am not logged in
		When I click on the users page
		Then I should see a login form
		
	Scenario: Logging in successfully
		Given I am not logged in
		When I submit the correct credentials to the login page
		Then I should be redirected to my User page
		And I should be logged in
		
	Scenario: Logging in unsuccessfully
		Given I am not logged in
		When I submit incorrect credentials to the login page
		Then I should be redirected to the login page
		And I should not be logged in