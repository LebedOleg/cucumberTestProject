Feature: Lookup a definition


  Background:
    Given the user is on Ictapps start page

  Scenario: test1
    When the user click on site logotype
    Then Page should have the "Welcome - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/welcome" URL

  Scenario: test2
    When the user click on "Welcome" link
    Then Page should have the OUR SPECIAL OFFERS header
    Then Page should have the "Welcome - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/welcome" URL

  Scenario: test3
    When the user click on "Products" link
    Then Page should have the "Products" breadcrumb
    Then Page should have the "Products - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/products" URL

  Scenario: test4
    When the user click on "Special Offers" link
    Then Page should have the "Special Offers" breadcrumb
    Then Page should have the "Special Offers - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/special-offers" URL

  Scenario: t est5
    When the user click on "Blogs" link
    Then Page should have the "Blogs" breadcrumb
    Then Page should have the "Blogs - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/blogs" URL

  Scenario: test6
    When the user click on "Contact Us" link
    Then Page should have the CONTACTS header
    Then Page should have the "Contact Us - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/contact-us" URL

  Scenario Outline: test7
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

  Scenario Outline: test8
    When click on title of "<item>" in news feed
    Then the user should be relocated to page that contains image and Read More link
    Examples:
      | item |
      | 1    |
      | 3    |
      | 5    |


  Scenario Outline: test9
    When the user move mouse cursor on "<item>" in OUR SPECIAL OFFERS picture carousel
    When the user click on title of "<item>"
    Then Product should have title, description and image
    Examples:
      | item |
      | 0    |
      | 2    |
      | 4    |

  Scenario Outline: test10
    When the user move mouse cursor on "<item>" in OUR SPECIAL OFFERS picture carousel
    When the user click on MORE link of "<item>"
    Then Product should have title, description and image
    Examples:
      | item |
      | 0    |
      | 2    |
      | 4    |

  Scenario Outline: test11 Special offers carousel
    When the user move mouse cursor on "<item>" in OUR SPECIAL OFFERS picture carousel
    Then item should have title, description and More link of "<item>"
    Examples:
      | item |
      | 0    |
      | 2    |
      | 4    |

  Scenario Outline: test12
    Given the user is on Ictapps start page
    Then list of languages should be correct "<item>"
    Examples:
      | item       |
      | English    |
      | italiano   |
      | українська |
      | русский    |


  Scenario: test 13
    Then the languages should be in correct order :
      | 1 | English    |
      | 2 | italiano   |
      | 3 | українська |
      | 4 | русский    |


  Scenario Outline: : test14 Category carousel
    Then Move mouse cursor on "<item>"
    Then Check that item have "<item>"
    When the user click on "<item>" of category image carousel
    Then URL should contain "http://88.198.7.89:8100/web/guest/products/-/category/" part
    Examples:
      | item |
      | 0    |
      | 5    |
      | 8    |


  Scenario: test15
    When the user click on SIGN IN link
    Then Page have right header
    Then Page have "login" textbox
    Then Page have "password" textbox

  Scenario: test16
    When the user click on GOOGLEPLAY link
    Then Page should have "Demo ICT4APPS SERIES BASIC" title
    Then Page should have install button

#  Scenario: test16  APPLE LINK






