Feature: shopping feature
  This implements shopping from store

  Scenario Outline: add product to cart
  This implements adding a product to cart
    Given I'm on the store page
    And I add a "<product>" to the Cart
    Then I see <quantity> "<product>" in the Cart

    Examples:
      | product    | quantity |
      | blue shoes | 1        |
      | red blouse | 3        |
