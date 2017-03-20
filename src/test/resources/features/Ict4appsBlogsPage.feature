Feature: Blogs page


  Background:
    Given the user is on Blogs page

  Scenario Outline: test1
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

  Scenario Outline: test2
    When the user click on title of the "<number of blog>" blog entry
    When the user click on View Original Post link
    Then Website contains title of post that was chosen
    When the user click on ReadMore link
    Then Website is opened and contains title of post that was chosen
    When the user click on Previous link
    Then entry should change to previous
    Examples:
      | number of blog |
      | 1              |
      | 11             |
      | 19             |

  Scenario: test3
    When the user enter value in search field
    When the user press Enter button
    Then Search page should be opened

