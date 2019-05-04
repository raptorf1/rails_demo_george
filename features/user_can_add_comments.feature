Feature: Add comments to an article

As a user
In order to express my opinion on published articles
I would like to be able to leave a comment

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
    Then I should see "Learn Rails 5"
    When I click "Show"
    Then I should see "Add a comment:"
    And I should see "Commenter"
    And I should see "Comment"

Scenario: User can add comments to a published article    
    When I fill "comment_commenter" with "reptile@gmail.com"
    And I fill "comment_body" with "That is a very nice article"
    And I click "commit" button
    Then I should see "reptile@gmail.com"
    And I should see "That is a very nice article"
    And I should see "Delete Comment"

Scenario: User cannot add empty comments
    When I fill "comment_commenter" with "reptile@gmail.com"
    And I click "commit" button
    Then I should not see "reptile@gmail.com"
    