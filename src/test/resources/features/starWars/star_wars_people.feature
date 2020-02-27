Feature: Example cucumber with Star Wars People

  Scenario Outline: User would like to see information about Luke Skywalker
    Given user would like to see people number <codePeople>
    When user clicks on find people button into Star Wars series
    Then user should see "<type>" message
    And user should see <field> with value "<value>"
    And user should see <field> with value "<value>"
    Examples:
      | codePeople | type    | field      | value |
      | 1          | success | hair_color | blond |

  Scenario: User would like to see information about Luke Skywalker with table
    Given user would like to see people number 1
    When user clicks on find people button into Star Wars series
    Then user should see fields below:
      |name       | Luke Skywalker |
      |hair_color | blond          |
     And user should see "success" message

  Scenario Outline: User would like to see status codes ok and not ok.
    Given user would like to see people number <codePeople>
    When user clicks on find people button into Star Wars series
    Then user should see "<response>" message

    Examples:
      |codePeople | response  |
      | 1         | success   |
      | 12317673  | not found |