Feature: Localization


 Background:
   Given the user is on Ictapps start page

 Scenario Outline: ltest 1
   When the user click on the language dropdown menu
   When the user select "<item>" in language dropdown menu
   Then Welcome link at header part  should be translate like a  "<linkname>"
   Then Slogan should be translated into chosen language
   Then Search button should be translated
   Then Welcome link at footer part should be translated like a "<linkname>"
   Examples:
     | item       | linkname  |
     | English    |  Welcome  |
     | italiano   | Benvenuto |
     | українська | Головна   |
     | русский    | Главная   |

   Scenario Outline: ltest 2
     When the user move mouse cursor on first item of OUR SPECIAL OFFERS carousel and get value from it
     When the user click on the language dropdown menu
     When the user select "<item>" in language dropdown menu
     When the user move mouse cursor on "1" in OUR SPECIAL OFFERS picture carousel
     Then title of item should change
     Then description of item should change
     Then MORE link should be translate
     Examples:
     |item|
     |English|
     |italiano|
     |українська|
     |русский   |

   Scenario Outline: ltest 3
     When the user move mouse cursor on first item  in Categories picture carousel
     When the user click on the language dropdown menu
     When the user select "<item>" in language dropdown menu
     When move mouse curcor on first item in Category image carousel
     Then title of item in Category image carousel should change
     Examples:
       |item|
       |English|
       |italiano|
       |українська|
       |русский   |


