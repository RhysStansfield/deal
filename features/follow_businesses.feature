Feature: Following Businesses
<<<<<<< HEAD
        As a user who wants to see deals relevant to my interests
        In order for this to occur
        I want to be able to follow specific businesses

        @sign_in
        Scenario: Following a business
                Given I have added Nike as a business
                When I go to the participating businesses page
                And  I follow Nike
                Then Nike should have "1" follower

=======
  As a user who wants to see deals relevant to my interests
  In order for this to occur
  I want to be able to follow specific businesses
>>>>>>> 3fa82f53dd6439b2e23e25b17f50c21d1cec3594

  @sign_in
  Scenario: Following a business
    Given I have added Nike as a business
    When I go to the participating businesses page
    And  I follow Nike
    Then Nike should have "1" follower

  @sign_in
  Scenario: Unfollowing a business
    Given I have pressed follow Nike
    When I press "Unfollow"
    Then Nike should have "0" followers
