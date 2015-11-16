Feature: Login
  The Login page should not allow unknown users to login to service frame

  Scenario Outline: Unauthenticated users cannot login to service frame
    Given I can open the Login page
    When I login as  "<user_name>" with password "<password>"
    Then I should see "<expected_text>"

  Examples:
  | user_name         | password  	| expected_text               |
  | fred.flintstone   | betty       | Incorrect email or password |
  | wilma.flintstone  | bamm-bamm	| Incorrect email or password |