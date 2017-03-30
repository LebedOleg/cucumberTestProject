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
