Feature: Special offers page

  Background:
    Given the user is on Special offers page

   Scenario: test17
     When the user click on "th-large" view icon on Special offers page
     Then products list on Special offers page should change it's view on grid
     When the user click on "list" view icon on Special offers page
     Then products list on Special offers page should change it's view on list


   Scenario Outline: test18
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

