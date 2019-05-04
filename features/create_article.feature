Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

  Background:
    Given the following user exists
      | email                 | password |
      | raptor_f1@hotmail.com | 12345678 |
    
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

    When I visit the "landing" page
    And I fill in "user_email" with "raptor_f1@hotmail.com"
    And I fill in "user_password" with "12345678"
    And I click the "Log in" button
    Then I should see "Welcome to my 1st rails app :)"
    When I click "Create article"

  Scenario: Successfully create an article [Happy Path]
    And I fill in "article_title" with "Learning Rails 5"
    And I fill in "article_content" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Publisher doesn't enter a title for the article [Sad Path]
    And I fill in "article_content" with "Excited about learning a new framework"
    And I click "commit" button
    Then I should see "Title can't be blank"

  Scenario: Publisher doesn't enter content for the article [Sad Path]
    And I fill in "article_title" with "Excited about learning a new framework"
    And I click "commit" button
    Then I should see "Content can't be blank"

  Scenario: Publisher enters title shorter than 5 characters for the article [Sad Path]
    And I fill in "article_content" with "Exc"
    And I click "commit" button
    Then I should see "Title is too short"
