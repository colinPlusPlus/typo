Feature: Merge Articles
  As a blog administrator
  In order to organize my thoughts
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "All Articles"
    And I follow "Hello World!"
       
  Scenario: Successfully merge articles
    Given I should see "Merge Articles"
    When I fill in "article_id" with "3"
    And I press "Merge"
    Then I should see "Welcome to Typo. This is your first article. Edit or delete it, then start blogging! Lorem Ipsum"
