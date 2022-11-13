Feature: first cucumber test
  This feature can include one or multiple user stories

  Rule: rule 1
    This is first rule with it's own background section
    Background:
      background section should have maximum 4 steps
      Given initial general setup

    Scenario: first scenario in framework
    The number of steps should not exceed 5 to 8
      Given the existent setup
      And login is successfull
      When url is accessed
      * credentials entered
      * command committed
      Then information is retrieved
      But the user is not logged out

    Scenario Outline: second scenario in framework
    The number of steps should not exceed 5 to 8
      Given the existent setup
      And enter with $<bonus>
      When url is accessed
      * credentials entered
      * command committed
      Then information is retrieved
      But the user is not logged out

      Examples:
        | username | bonus |
        | me       | 10    |

      Rule: rule 2
      This is second rule with another background section
      Background:
        Given another page

        Scenario: scenario for second rule
