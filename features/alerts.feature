Feature: View Alerts Page
  The user should be able to view the alerts page with no errors or exceptions

  Scenario Outline: Authenticated users can login to service frame and view the alerts page
    Given I can open the Login page
    When I login as  "<user_name>" with password "<password>"
      And I can see "<initial_text>"
      And I select the Alerts link
    Then I should see "<alerts_text>"
      And I see no exceptions
      And I see no errors
 
  Examples:
  | user_name                | password 	  | initial_text             | alerts_text   |
  | admin@serviceframe.com   | papphutfg    | Service Pack Performance | View Alerts   |