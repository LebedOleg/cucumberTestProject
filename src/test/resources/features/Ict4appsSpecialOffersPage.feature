Feature: Special offers page

  Background:
    Given the user is on Special offers page

   Scenario: test36
     When the user click on "th-large" view icon on Special offers page
     Then products list on Special offers page should change it's view on grid
     When the user click on "list" view icon on Special offers page
     Then products list on Special offers page should change it's view on list


   Scenario Outline: test37
     When the user click on title of the "<number of product>"
     Then Product should have title, description and image
     When the user click on ReadMore link of the "<number of product>"
     Then Product should have title, description and image
     When the user click on image of the "<number of product>"
     Then Product should have title, description and image
     Examples:
     |number of product|
     |1                |
     |6                |
     |12               |


    Scenario Outline: test38 PAGINATION NEXT
      When the user click on "<PAGINATOR>" pagination button
      Then label that showing number of results should change to "<Expected state>"
#      Then
      Examples:
      |PAGINATOR|Expected state                |
      |Next     |Showing 13 - 24 Of 15 Results |
      |Previous |Showing 1 - 12 Of 15 Results  |
      |Last →   |Showing 13 - 24 Of 15 Results |
      |← First  |Showing 1 - 12 Of 15 Results  |

 Scenario Outline: test38
    When the user click on pages dropdown menu
    When the user select "<Number of item>" item in pages dropdown menu on Special offers page
    Then label that showing number of results should change to "<Expected state>"
    Examples:
    |Number of item|Expected state                |
    |1             |Showing 1 - 12 Of 15 Results  |
    |2             |Showing 13 - 24 Of 15 Results |

   Scenario Outline: test39
     When the user click on items per page dropdown menu
     When the user select "<Number of showing items>" item in items per page dropdown menu
     Then label that showing number of results should change to "<Expected state>"
#     Then product list should contain '<Number of showing items>' items
     Examples:
     |Number of showing items|Expected state               |
     |12                     |Showing 1 - 12 Of 15 Results |
     |36                     |Showing 1 - 36 Of 15 Results |
     |96                     |Showing 1 - 96 Of 15 Results |




#  Scenario: test207
#    When the user click on site logotype
#    Then Page should have the "Welcome - ict4apps" title
#    Then Page should have "http://88.198.7.89:8100/welcome" URL

  Scenario: test40
    When the user click on "Welcome" link "1"
    Then Page should have the OUR SPECIAL OFFERS header
    Then Page should have the "Welcome - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/welcome" URL

  Scenario: test41
    When the user click on "Products" link "1"
    Then Page should have the "Products" breadcrumb
    Then Page should have the "Products - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/products" URL

  Scenario: test42
    When the user click on "Special Offers" link "1"
    Then Page should have the "Special Offers" breadcrumb
    Then Page should have the "Special Offers - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/special-offers" URL

  Scenario: test43
    When the user click on "Blogs" link "1"
    Then Page should have the "Blogs" breadcrumb
    Then Page should have the "Blogs - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/blogs" URL

  Scenario: test44
    When the user click on "Contact Us" link "1"
    Then Page should have the CONTACTS header
    Then Page should have the "Contact Us - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/contact-us" URL

  Scenario: test45
    When the user click on SIGN IN link
    Then Page have right header
    Then Page have "login" textbox
    Then Page have "password" textbox


  Scenario: test46
    When the user scroll page down
    When the user click on "Welcome" link "3"
    Then Page should have the OUR SPECIAL OFFERS header
    Then Page should have the "Welcome - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/welcome" URL

  Scenario: test47
    When the user scroll page down
    When the user click on "Products" link "3"
    Then Page should have the "Products" breadcrumb
    Then Page should have the "Products - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/products" URL

#  Scenario: test216
#    When the user scroll page down
#    When the user click on "Special Offers" link "3"
#    Then Page should have the "Special Offers" breadcrumb
#    Then Page should have the "Special Offers - ict4apps" title
#    Then Page should have "http://88.198.7.89:8100/web/guest/special-offers" URL

  Scenario: test48
    When the user scroll page down
    When the user click on "Blogs" link "3"
    Then Page should have the "Blogs" breadcrumb
    Then Page should have the "Blogs - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/blogs" URL

  Scenario: test49
    When the user scroll page down
    When the user click on "Contact Us" link "3"
    Then Page should have the CONTACTS header
    Then Page should have the "Contact Us - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/contact-us" URL


  Scenario: test50
    Then Page should contain "ict4apps" in first part of breadcrumb
    Then Page should contain "Special Offers" in second part of breadcrumb

  Scenario: test51
    When the user click on title of the "1"
    Then Page should have name of product in last part of breadcrumb
    When the user click on "Special Offers" part of breadcrumb
    Then Page should have the "Special Offers - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/special-offers" URL

  Scenario: test52
    When the user click on "ict4apps" part of breadcrumb
    Then Page should have the "Welcome - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest" URL

  Scenario: Items per page dropdown menu has items on Special offer page
    When get current options list of Items per page drop down menu
    Then Items per page should be at correct order:
      |1|12|
      |2|24|
      |3|36|
      |4|48|
      |5|96|

    Scenario: image gallery
      When the user click on product with two images
      When the user click on main image in product description page
      Then Close button and right arrow should be at image gallery
      When The user click on right arrow of image gallery
      Then Image should change
      When The user click on left arrow of image gallery
      Then Image should change to first
#      Then Left arrow button should appear
      Then image gallery should be close after click on close button
