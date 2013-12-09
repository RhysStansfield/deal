Feature: Following Businesses
        As a user who wants to see deals relevant to my interests
        In order for this to occur
        I want to be able to follow specific businesses

        @sign_in
        Scenario: Following a business
                Given I have added Nike as a business
                When I go to the participating businesses page
                And  I follow Nike
                Then Nike should have "1" follower

        Scenario: Unfollowing a business
                Given I have 



