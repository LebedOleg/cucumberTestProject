Feature: Lookup a definition




  Scenario: test1
    Given the user is on Ictapps start page
    When the user click on "Welcome" link
    Then Page should have the OUR SPECIAL OFFERS header
    Then Page should have the "Welcome - ict4apps" title

  Scenario: test2
    Given the user is on Ictapps start page
    When the user click on "Products" link
    Then Page should have the "Products" breadcrumb
    Then Page should have the "Products - ict4apps" title

  Scenario: test3
    Given the user is on Ictapps start page
    When the user click on "Special Offers" link
    Then Page should have the "Special Offers" breadcrumb
    Then Page should have the "Special Offers - ict4apps" title

  Scenario: test4
    Given the user is on Ictapps start page
    When the user click on "Blogs" link
    Then Page should have the "Blogs" breadcrumb
    Then Page should have the "Blogs - ict4apps" title

  Scenario: test5
    Given the user is on Ictapps start page
    When the user click on "Contact Us" link
    Then Page should have the CONTACTS header
    Then Page should have the "Contact Us - ict4apps" title

  Scenario Outline: Language dropdown menu
    Given the user is on Ictapps start page
    When the user click on the language dropdown menu
    When the user select "<item>" in language dropdown menu
    Then Page should have "<translate>" link "<linkname>"
#  Then They should see the items "<language>"
    Examples:
      | item       | translate | linkname  |
      | English    | WELCOME   | Welcome   |
      | italiano   | BENVENUTO | Benvenuto |
      | українська | ГОЛОВНА   | Головна   |
      | русский    | ГЛАВНАЯ   | Главная   |

    Scenario Outline: test6
      Given the user is on Ictapps start page
      When click on title of "<item>" in news feed
      Then the user should be relocated to page that contains image and Read More link
      Examples:
      |item|
      |1   |
      |3   |
      |5   |


  Scenario: MOVER
    Given the user is on Ictapps start page
    When  the user move mouse cursor on "4" item in picture carousel
    Then item should have title

    Scenario Outline: Special offers carousel
      Given the user is on Ictapps start page
      When the user move mouse cursor on "<item>" in OUR SPECIAL OFFERS picture carousel
      Then item should have title, description and More link of "<item>"
      Examples:
      |item|
      |0   |
      |1   |
      |2   |
      |3   |
      |4   |

      Scenario Outline:
        Given the user is on Ictapps start page
        Then list of languages should be correct "<item>"
        Examples:
        |item      |
        |English   |
        |italiano  |
        |українська|
        |русский   |


  Scenario: test 13
    Given  the user is on Ictapps start page
    Then the languages should be in correct order :
    |1|English   |
    |2|italiano  |
    |3|українська|
    |4|русский   |


    Scenario Outline: : Category carousel
      Given the user is on Ictapps start page
      Then Move mouse cursor on "<item>"
      Then Check that item have "<item>"
      Examples:
      |item|
      |0   |
      |1   |
      |2   |
      |3   |
      |4   |
      |5   |
      |6   |
      |7   |
      |8   |


  Scenario: test66
    Given the user is on Ictapps start page
    When the user click on SIGN IN link
    When the user click on SIGN IN button
    Then error messages should appear near the "1" and "2" fields

    Scenario: test7
      Given the user is on Ictapps start page
      When the user click on SIGN IN link
      When the user clear value in "login" field, enter "test@liferay.com" in login field and click on SIGN IN button
      When the user click on SIGN IN button
      Then error messages should appear near the "1" field

      Scenario: Forsag
        Given the user is on Ictapps start page
        When click on right scroll button

        Scenario: Random generator
          Given the user is on Ictapps start page
          When the user click on "Contact Us" link
          When enter random value in "1" textbox

