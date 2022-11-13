Feature: shopping feature
  This implements shopping from store

  @shop
  Scenario Outline: add product to cart
  This implements adding a product to cart
    #Given I'm on the store page
    And I add a "<product>" to the Cart
    Then I see <quantity> "<product>" in the Cart

    Examples:
      | product    | quantity |
      | blue shoes | 1        |
      | red blouse | 3        |


  Scenario: single row no header data table example
    Given my credentials
      | john | john123 |


  Scenario: multiple rows no header data table example
    Given my credentialsList
      | john | john123 |
      | bill | bill123 |


  Scenario: multiple rows with header data table example
    Given my credentialsList as
      | username | password |
      | john     | john123  |
      | bill     | bill123  |

  @user
  Scenario: multiple rows with header data table example
    Given my credentialsList as list
      | username | password | age |
      | john     | john123  | 2   |
      | bill     | bill123  | 3   |