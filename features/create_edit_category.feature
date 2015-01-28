Feature: Create Categories
  As a blog administrator
  In order to organize my thoughts
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "Categories"
  Scenario: Successfully create category
    Given I fill in "category_name" with "Foobar"
    Then I fill in "category_keywords" with "bar and baz"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "Foobar"
    And I should see "bar and baz"
    
  Scenario: Successfully edit category
    Given I fill in "category_name" with "Foobar"
    Then I fill in "category_keywords" with "bar and baz"
    And I press "Save"
    When I follow "Foobar"
    Then the "Name" field should contain "Foobar"
    When I fill in "category_keywords" with "bar baz"
    And I press "Save"
    Then I should see "Category was successfully saved."
    Then I should see "bar baz"