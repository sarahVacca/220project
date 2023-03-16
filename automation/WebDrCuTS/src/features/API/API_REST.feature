@Regression
Feature: Test End to End User
  @GETCall
  Scenario Outline: Validate End to End Get Single User
    When Make GET <endPoint> api call
    Then Validate Status <status>
    Then Validate Name <name>
    Then Validate Year <year>

    @DEV
    Examples:
      | endPoint      | status | name |       year |
      | /api/user/2   | 200    | fuchsia rose | 2001 |

    @QA
    Examples:
      | endPoint      | status | name |       year |
      | /api/user/2   | 200    | fuchsia rose | 2001 |
