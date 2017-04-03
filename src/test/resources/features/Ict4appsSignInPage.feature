Feature: Sign In page

  Background:
    Given user is on Sign In page


#  Scenario Outline: test1
#    When the user click on "<icon>"
#    Then URL should change to "<URL>"
#    Examples:
#    |icon    |URL                      |
#    |LinkedIn|https://www.linkedin.com |
#    |Twitter |https://api.twitter.com  |
#    |Google+ |https://plus.google.com  |

  Scenario: test 502
  When the user click on "Facebook"
    Then page should contain "https://www.facebook.com" part in URL



#  Scenario: test2
#    When the user click on SIGN IN link on SIGN IN page
#    Then error message should appear above " Email Address " textbox
#    Then error message should appear above " Password " textbox

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

  Scenario: test 605 Correct login and incorrect password
    When Enter "test@test.com" in "login" textbox on SIGN IN page
    When Enter "asdfgh" in "password" textbox on SIGN IN page
    When the user click on SIGN IN link on SIGN IN page
    Then Request failed to complete error message should appear
    Then Please try again error message should appear

  Scenario: test 606 correct login and password
    When Enter "test@test.com" in "login" textbox on SIGN IN page
    When Enter "qwerty" in "password" textbox on SIGN IN page
    When the user click on SIGN IN link on SIGN IN page
    Then Page should contain My Account button
    Then Page should contain Log Out button

#  Scenario: test 607 click on Return to the Full page button
#    When the user click on Return to Full Page button
#    Then Page should have the "Welcome - ict4apps" title
#    Then Page should have "http://88.198.7.89:8100/web/guest/welcome" URL


  Scenario: test5
    When the user click on Create Account link
    Then Create Account page should be open

