Feature: User must be member to view the website
  As a site owner
  In order to protect my website from malicious use
  I would like anyone accessing it to be a member

  Scenario: User must be member to view the website
    Given I visit the "landing" page
    Then I should see "You need to sign in or sign up before continuing."
    And I should see "Sign up"
    And I should see "Log in"
    And I should see "Email"
    And I should see "Password"