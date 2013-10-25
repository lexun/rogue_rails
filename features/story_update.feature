Feature: Update Story
  In order to change the requirements of a story
  As a project team member
  I want to modify a story

  Background:
    Given I have a project
    Given I am in the ProjectStoryIndex
    When I click the "New Story" link
    And I fill in "In order to" with "win"
    And I fill in "As a" with "myself"
    And I fill in "I want to" with "develop this feature"
    And I select "0" from "Value"
    And I select "3" from "Complexity"
    And I click the "Save Story" button


  Scenario:  Update Story
    Given I am in the ProjectStoryIndex
    When I click the "develop this feature" link
    And I fill in "I want to" with "develop another feature"
    And I click the "Save Story" button
    Then I should see "develop another feature"

 Scenario: Create Story, Fail, leave In Order To blank
      Given I am in the ProjectStoryIndex
      When I click the "develop this feature" link
      And I fill in "As a" with ""
      And I click the "Save Story" button
      Then I should see "Story could not be saved."

