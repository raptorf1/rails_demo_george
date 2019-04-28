Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

  Background:
    Given the following user exists
      | email                 | password |
      | raptor_f1@hotmail.com | 12345678 |
    And I visit the "landing" page
    And I fill in "user_email" with "raptor_f1@hotmail.com"
    And I fill in "user_password" with "12345678"
    And I click the "Create Article" link

  Scenario: Successfully create an article [Happy Path]
    When I fill in "title" with "Learning Rails 5"
    And I fill in "content" with "Excited about learning a new framework"
    And I click "Save Article" button
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Publisher doesn't enter a title for the article [Sad Path]
    When I fill in "Content" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should see "Title can't be blank"
  