Feature: Update an article

As a publisher
In order to keep my content accurate
I would like to be able to edit my articles

Background:
    Given the following user exists
      | email                 | password |
      | raptor_f1@hotmail.com | 12345678 |
    
    Given the following articles exists
      | title                | content                          |
      | Learn Rails 5        | Build awesome rails applications |

    When I visit the "landing" page
    And I fill in "user_email" with "raptor_f1@hotmail.com"
    And I fill in "user_password" with "12345678"
    And I click the "Log in" button
    Then I should see "Welcome to my 1st rails app :)"
    When I click "Show List of Articles"

Scenario: Successfully edit an article
    Then I should see "Learn Rails 5"
    When I click "Edit"
    And I fill in "article_title" with "Learning Rails 5655"
    And I click "Update Article" button
    Then I should see "Learning Rails 5655"
    And I should see "Build awesome rails applications"
