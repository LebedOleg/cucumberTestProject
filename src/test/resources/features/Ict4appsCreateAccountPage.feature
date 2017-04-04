Feature: Create Account page



Background:
  Given the user is on Create Account page


Scenario: test68
  When the user click on SAVE button
  Then Error message should appear at the right of "First Name " textbox
  Then Error message should appear at the right of " Screen Name " textbox
  Then Error message should appear at the right of " Email Address " textbox
  Then Error message should appear at the right of " Text Verification " textbox

 Scenario: test69 Enter valid value in required fields
   When Enter "qwerty" value in "First Name " textbox
   Then Error message should disappear near of "First Name " textbox
   When Enter "qwerty" value in " Screen Name " textbox
   Then Error message should disappear near of " Screen Name " textbox
   When Enter "test@test.com" value in " Email Address " textbox
   Then Error message should disappear near of " Email Address " textbox
   When Enter "12345" value in " Text Verification " textbox
   Then Error message should disappear near of " Text Verification " textbox

  Scenario: test70
  When the user click on date picker
  When the user click on "next" arrow link
  Then date should change to "February 1970"
  When the user click on "11" calendar day
  Then date in textbox should change to "02/11/1970"

Scenario: test71
  When the user click on date picker
  When the user click on "previous" arrow link
  When the user click on "7" calendar day
  Then date in textbox should change to "01/07/1969"


Scenario: test72
  When the user clear value in date picker textbox
  When the user enter "01/01/1993" in date picker textbox
  When the user click on date picker
  Then date in textbox should change to "01/01/1993"


 Scenario: test73
#  When the user click on Gender dropdown menu
  When the user select "Female" option in Gender dropdown menu
   Then "Female" option should be selected


 Scenario: test74
#  When the user click on Country dropdown menu
  When the user select "armenia" option in Country dropdown menu
#  Then


  Scenario: test75 enter email that doesn't have part after  dot  symbol
  When Enter "test@test"  in " Email Address " field
    When the user click on SAVE button
    Then Error message should appear at the right of " Email Address " textbox

  Scenario: test76 enter Numeric characters in part before"@" symbol
    When Enter "12345@test.com"  in " Email Address " field
    When the user click on SAVE button
    Then Error message should disappear near of " Email Address " textbox

  Scenario: test77 enter Special characters in part before"@" symbol
    When Enter "!@#$%@test"  in " Email Address " field
    When the user click on SAVE button
    Then Error message should appear at the right of " Email Address " textbox

  Scenario: test78 enter Numeric characters in part after"@" symbol
    When Enter "qwerty@123456.com"  in " Email Address " field
    When the user click on SAVE button
    Then Error message should disappear near of " Email Address " textbox

  Scenario: test79  enter Special characters in part after"@" symbol
    When Enter "qwerty@!@#$%.com"  in " Email Address " field
    When the user click on SAVE button
    Then Error message should appear at the right of " Email Address " textbox









#
# Scenario: test807
#  When

#  When the user click on date picker

#  Then

#Scenario: test3 Email Address (Required) textbox validation
#  When the user enter