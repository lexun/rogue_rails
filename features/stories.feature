Feature: Create Stories
  In order to capture requirements for a feature
  As a project team member
  I want to create a story

Scenario: Create Story
    Given I am in the Storyindex
    When I click the "New Story" button
    And I fill in "Title" with "The title of this story"
    And I fill in "In order to" with "win"
    And I fill in "As a" with "myself"
    And I fill in "I want to" with "develop this feature"
    And I select "0" from "Value"
    And I select "3" from "Complexity"
    And I press "Save Story"
    Then I should see "New story created."
    And I should see "Stories"
    And I should see "The title of this story"
    And I should have 1 story