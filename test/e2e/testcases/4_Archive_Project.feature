@projects
Feature: Archive

    @master
    Scenario: Login with Valid Credentials
        Given I am on the login page
        When I enter valid credentials
        Then I am logged in

    @master
    Scenario: Once Logged in you are on the Norman Page
        Given I am on the Landing Page
        When I click to enter the project
        Then I am in the prototype page

    @master
    Scenario: Once on Prototype page I may change to Settings Page
        Given I am in the prototype page
        When I click Settings in Nav Bar
        Then I am on the settings page

    @master
    Scenario: Once on Settings page I may archive project
        Given I am on the settings page
        When I tick archive project
        And I click the Archive button
        Then The project has been archived

    @master
    Scenario: Once a Project is archived go to Project Page
        Given I am on the settings page
        When I click Home in Nav Bar
        Then I am on the Home page

    @master
    Scenario: Once archived and back on Project page check if archived
        Given I am on the Landing Page
        When Archive Exists
        Then The project has been archived

    @master
    Scenario: Open archived project so we may unarchive it
        Given I am on the Landing Page
        When I press the Archive label
        And I then click a project
        Then I am in the prototype page

    @master
    Scenario: Once a Project has been Archived go to Settings to Unarchive
        Given I am in the prototype page
        When I click Settings in Nav Bar
        Then I am on the settings page

    @master
    Scenario:
        Given I am on the settings page
        When I tick archive project
        And I click the Archive button
        Then The project has been unarchived

    @master
    Scenario: Once a Project is unarchived go to Project Page
        Given I am on the settings page
        When I click Home in Nav Bar
        Then I am on the Home page

    @master
    Scenario: Once unarchived and back on Project page check if unarchived
        Given I am on the Landing Page
        When A Project Tile Exists
        Then The project has been archived


