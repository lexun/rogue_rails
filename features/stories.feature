Feature: Stories
  In order to capture requirements for a feature
  As a project team member
  I want to create a story

Scenario: Create Story, Success!
    Given I am in the Storyindex
    When I click the "New Story" button
    And I fill in "In order to" with "win"
    And I fill in "As a" with "myself"
    And I fill in "I want to" with "develop this feature"
    And I select "0" from "Value"
    And I select "3" from "Complexity"
    And I press "Save Story"
    Then I should see "New story created."
    And I should see "Stories"
    And I should see "develop this feature"
    And Story count should increment by 1


Scenario: Create Story, Fail, leave In Order To blank
    Given I am in the Storyindex
    When I click the "New Story" button
    And I fill in "As a" with "myself"
    And I fill in "I want to" with "develop this feature"
    And I select "0" from "Value"
    And I select "3" from "Complexity"
    And I press "Save Story"
    Then I should see "Story could not be created."
    And I should see "New Story"
    And Story count should not increment by 1


#Feature:  Update Story
#  In order to change the requirements of a story
##  As a project team member
#  I want to modify a story

#Scenario:  Update Story
#  Given I am in the Storyindex
#  When I click the "The title of this story" link

Scenario:  List stories
  Given I have a story
  When I go to the storyindex page
  Then I should see "develop this feature"
