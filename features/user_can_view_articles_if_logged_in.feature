Feature: User can view articles if logged in
  As a site owner
  In order to assess the functionality of my website
  I would to check if a logged in user can view articles

  Scenario: User can view articles if logged in
    Given the following user exists
      | email                 | password |
      | raptor_f1@hotmail.com | 12345678 |
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |
    Given I visit the "landing" page
    Then I fill in "user_email" with "raptor_f1@hotmail.com"
    And I fill in "user_password" with "12345678"
    And I click the "Log in" button
    And I should see "Welcome to my 1st rails app :)"
    Then I click "Show List of Articles"
    And I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"
    And I should see "Logged in as raptor_f1@hotmail.com."
    And I should see "Edit profile"
    And I should see "Logout"
