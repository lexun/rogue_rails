Feature: Delete a Story

  Background:
    Given I am in the Storyindex
    When I click the "New Story" link
    And I fill in "In order to" with "win"
    And I fill in "As a" with "myself"
    And I fill in "I want to" with "develop this feature"
    And I select "0" from "Value"
    And I select "3" from "Complexity"
    And I click the "Save Story" button
    Then I should see "develop this feature"

@javascript
Scenario: Delete a story, choose OK
	Given I am in the Storyindex
	When I click the "develop this feature" link
	And I setup to accept the choice
	And I click the "Delete Story" button
	Then I should see "Story was deleted."
    And I should see "Stories"
	And I should not see "develop this feature"    

@javascript
Scenario: Delete a story, choose CANCEL
	Given I am in the Storyindex
	When I click the "develop this feature" link
	And I setup to decline the choice
	And I click the "Delete Story" button
	And I should see "Edit Story"