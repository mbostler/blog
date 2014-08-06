Feature: posting articles 
	In order to share written content
	As a user with the "posting_content" role
	I should be able to post content to the site
	
	Scenario: Posting articles
		Given I am logged in as a user with the "posting_content" role
		When I visit the "articles" page
		Then I should see a link to post content

	Scenario: Posting albums
		Given I am logged in as a user with the "posting_content" role
		When I visit the "albums" page
		Then I should see a link to post content
