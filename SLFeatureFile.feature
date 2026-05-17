Feature: Swag Labs Login and Purchase

	  #SCENARIO 1: Your original - Happy Path (unchanged)
  Scenario Outline: Valid login and product purchase
    Given User is on Swag Labs login page
    When User logs in with "<username>" and "<password>"
    Then User should land on the product page
    When User adds "<product>" to the cart
    And completes checkout with "<firstName>", "<lastName>", "<zipCode>"
    Then User should see order confirmation with "<product>"

    Examples:
      | username      | password     | product                           | firstName | lastName    | zipCode |
      | standard_user | secret_sauce | Sauce Labs Backpack               | Kavya     | Subramanian | 12345   |
      | standard_user | wrong_password | Sauce Labs Backpack 						| Arjun			| Subramanian | 12345 	 |

       #SCENARIO 2: Invalid Login (NEW - needs one new Then step)
  Scenario Outline: Invalid login attempts
    Given User is on Swag Labs login page
    When User logs in with "<username>" and "<password>"
    Then User should see error message "<errorMessage>"

    Examples:
      | username                | password     | errorMessage                                                                  |
      | locked_out_user         | secret_sauce | Sorry, this user has been locked out.                                         |
      | standard_user           | wrong_pass   | Username and password do not match any user in this service                   |
      | invalid_user            | secret_sauce | Username and password do not match any user in this service                   |
      |                         | secret_sauce | Username is required                                                           |
      | standard_user           |              | Password is required                                                           |
      |                         |              | Username is required                                                           |