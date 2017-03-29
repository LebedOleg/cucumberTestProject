Feature: Sign In page

  Background:
    Given user is on Sign In page


  Scenario Outline: test1
    When the user click on "<icon>"
    Then URL should change to "<URL>"
    Examples:
    |icon    |URL                      |
    |LinkedIn|https://www.linkedin.com |
    |Twitter |https://api.twitter.com  |
    |Google+ |https://plus.google.com  |

  Scenario: test 502
  When the user click on "Facebook"
    Then page should contain "https://www.facebook.com" part in URL



  Scenario: test2
    When the user click on SIGN IN link on SIGN IN page
    Then error message should appear above " Email Address " textbox
    Then error message should appear above " Password " textbox

  Scenario: test3
    When Enter "qwerty" in "login" textbox on SIGN IN page
    When the user click on SIGN IN link on SIGN IN page
    Then error message above the " Email Address " textbox should disappear

  Scenario: test4
    When Enter "qwerty" in "login" textbox on SIGN IN page
    When Enter "qwerty" in "password" textbox on SIGN IN page
    When the user click on SIGN IN link on SIGN IN page
    Then Request failed to complete error message should appear
    Then Please try again error message should appear

  Scenario: test5
    When the user click on Create Account link
    Then Create Account page should be open

