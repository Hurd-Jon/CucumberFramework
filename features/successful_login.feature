Feature: Successful Login
  The Login page should allow known users to login to service frame

  Scenario Outline: Authenticated users can login to service frame
    Given I can open the Login page
    When I login as  "<user_name>" with password "<password>"
    Then I should see "<expected_text>"

  Examples:
  | user_name                | password 	| expected_text             |
  | admin@serviceframe.com   | papphutfg    | Service Pack Performance  |