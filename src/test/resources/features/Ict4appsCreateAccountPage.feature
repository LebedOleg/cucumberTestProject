Feature: Create Account page



Background:
  Given the user is on Create Account page


Scenario: test801
  When the user click on SAVE button
  Then Error message should appear at the right of "First Name " textbox
  Then Error message should appear at the right of " Screen Name " textbox
  Then Error message should appear at the right of " Email Address " textbox
  Then Error message should appear at the right of " Text Verification " textbox

 Scenario: test8022 Enter valid value in required fields
   When Enter "qwerty" value in "First Name " textbox
   Then Error message should disappear near of "First Name " textbox
   When Enter "qwerty" value in " Screen Name " textbox
   Then Error message should disappear near of " Screen Name " textbox
   When Enter "test@test.com" value in " Email Address " textbox
   Then Error message should disappear near of " Email Address " textbox
   When Enter "12345" value in " Text Verification " textbox
   Then Error message should disappear near of " Text Verification " textbox

  Scenario: test802
  When the user click on date picker
  When the user click on "next" arrow link
  Then date should change to "February 1970"
  When the user click on "11" calendar day
  Then date in textbox should change to "02/11/1970"

Scenario: test803
  When the user click on date picker
  When the user click on "previous" arrow link
  When the user click on "7" calendar day
  Then date in textbox should change to "01/07/1969"


Scenario: test804
  When the user clear value in date picker textbox
  When the user enter "01/01/1993" in date picker textbox
  When the user click on date picker
  Then date in textbox should change to "01/01/1993"


 Scenario: test805
#  When the user click on Gender dropdown menu
  When the user select "Female" option in Gender dropdown menu
   Then "Female" option should be selected


 Scenario: test806
#  When the user click on Country dropdown menu
  When the user select "armenia" option in Country dropdown menu
#  Then
#
# Scenario: test807
#  When

#  When the user click on date picker

#  Then

#Scenario: test3 Email Address (Required) textbox validation
#  When the user enter