Feature: View Data Page
  The user should be able to view the data page with no errors ro exceptions

  Scenario Outline: Authenticated users can login to service frame and view the data page
    Given I can open the Login page
    When I login as  "<user_name>" with password "<password>"
      And I can see "<initial_text>"
      And I select the Data link
    Then I should see "<data_text>"
      And I see no exceptions
      And I see no errors
 
  Examples:
  | user_name                | password     | initial_text             | data_text            |
  | admin@serviceframe.com   | papphutfg    | Service Pack Performance | Missing Measurements |