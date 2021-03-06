Feature: Projects
	Scenario: Create a Project, Success!
		Given I am in the Projectindex
  	When I click the "New Project" link
  	And I fill in "Name" with "My New Project 1"
  	And I click the "Save Project" button
  	Then I should see "New project created."
  	And I should see "Projects"
  	And I should see "My New Project 1"

	Scenario: Create a Project, leave Name blank, Fail!
    Given I am in the Projectindex
    When I click the "New Project" link
    And I fill in "Name" with ""
    And I click the "Save Project" button
    Then I should see "Project could not be saved."
    And I should see "New Project"


