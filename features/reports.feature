Feature: View Reports Page
  The user should be able to view the report page with no errors ro exceptions

  Scenario Outline: Authenticated users can login to service frame and view the reports page
    Given I can open the Login page
    When I login as  "<user_name>" with password "<password>"
      And I can see "<initial_text>"
      And I select the Reports link
    Then I should see "<report_text>"
      And I see no exceptions
      And I see no errors
 
  Examples:
  | user_name                | password     | initial_text             | report_text        |
  | admin@serviceframe.com   | papphutfg    | Service Pack Performance | On demand Reports  |