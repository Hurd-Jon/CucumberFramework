Feature: View Analysis Page
  The user should be able to view the analysis page with no errors ro exceptions

  Scenario Outline: Authenticated users can login to service frame and view the analysis page
    Given I can open the Login page
    When I login as  "<user_name>" with password "<password>"
      And I can see "<initial_text>"
      And I select the Analysis link
    Then I should see "<analysis_text>"
      And I see no exceptions
      And I see no errors
 
  Examples:
  | user_name                | password 	  | initial_text             | analysis_text |
  | admin@serviceframe.com   | papphutfg    | Service Pack Performance | KPI Analysis  |