Feature: Stories
  In order to capture requirements for a feature
  As a project team member
  I want to create a story

  Background:
    Given I have a project

  Scenario: Create Story, Success!
      Given I am in the ProjectStoryIndex
      When I click the "New Story" link
      And I fill in "In order to" with "win"
      And I fill in "As a" with "myself"
      And I fill in "I want to" with "develop this feature"
      And I select "0" from "Value"
      And I select "3" from "Complexity"
      And I click the "Save Story" button
      Then I should see "New story created."
      And I should see "Stories"
      And I should see "develop this feature"


  Scenario: Create Story, Fail, leave In Order To blank
      Given I am in the ProjectStoryIndex
      When I click the "New Story" link
      And I fill in "As a" with "myself"
      And I fill in "I want to" with "develop this feature"
      And I select "0" from "Value"
      And I select "3" from "Complexity"
      And I click the "Save Story" button
      Then I should see "Story could not be created."
      And I should see "New Story"


  Scenario:  List stories
    Given I have a story
    Given I am in the ProjectStoryIndex
    Then I should see "develop this feature"

  Scenario Outline: Calculate scores
    Given I have a story with bv: <bv>, and cv: <cv>
    Given I am in the ProjectStoryIndex
    Then I should see the correct score: <score>

    Examples:
      | bv | cv | score |
      | 1  | 5  | 1     |
      | 5  | 0  | 10    |
      | 3  | 4  | 4     |
      | 5  | 5  | 5     |
      | 1  | 1  | 5     |
