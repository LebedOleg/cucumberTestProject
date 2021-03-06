Feature: Blogs page


  Background:
    Given the user is on Blogs page

  Scenario Outline: test53
    When the user click on title of the "<number of blog>" blog entry
    Then Entry should contain all required elements
  #  Click on all elements in BLOG ENTRY DESCRIPTION
    When the user click on READ link of the "<number of blog>" blog entry
    Then Entry should contain all required elements
    When the user click on image of the "<number of blog>" blog entry
    Then Entry should contain all required elements
    When the user click on Comments link of the "<number of blog>" blog entry
    Then Entry should contain all required elements
    Examples:
      | number of blog |
      | 1              |
      | 10             |
      | 19             |

  Scenario Outline: test54
    When the user click on title of the "<number of blog>" blog entry
    Then Entry should contain "twitter" linked image
    Then Entry should contain "facebook" linked image
    Then Entry should contain "plusone" linked image
    Examples:
      | number of blog |
      | 1              |
      | 10             |
      | 19             |


  Scenario Outline: test55
    When the user click on title of the "<number of blog>" blog entry
    When the user click on View Original Post link
    Then Website contains title of post that was chosen
    When the user click on ReadMore link
    Then Website is opened and contains title of post that was chosen
    When the user click on Previous link
    Then entry should change to previous
    When the user click on Next link
    Then entry should change to next
    Examples:
      | number of blog |
      | 1              |
      | 11             |
      | 19             |

  Scenario: test56
    When the user enter value in search field
    When the user press Enter button
    Then Search page should be opened

  Scenario: test57
    When the user click on search button
    Then search page should have search field
    Then search page should have scope dropdown menu
    Then search page should have search button

  Scenario: test58
    Then Page should contain "ict4apps" in first part of breadcrumb
    Then Page should contain "Blogs" in second part of breadcrumb
    When the user click on title of the "1" blog entry
    Then Third part of breadcrumb is present
    When the user click on "Blogs" part of breadcrumb
    Then Page should have the "Blogs - ict4apps" title
    Then Page should have "http://88.198.7.89:8100/web/guest/blogs" URL





  Scenario: test60
    When the user click on "Next" pagination button
    Then Pages dropdown menu should display that "2" page is opened
    When the user click on " Previous " pagination button
    Then Pages dropdown menu should display that "1" page is opened
    When the user click on " Last → " pagination button
    Then Pages dropdown menu should display that last page is opened
    When the user click on " ← First " pagination button
    Then Pages dropdown menu should display that "1" page is opened

