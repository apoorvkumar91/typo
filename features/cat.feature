Feature: create a category
    As an admin
    In order to segment different articles into categories
    I want to be able to browse to the Categories page and add categories and also items to existing categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    And I follow "Categories"
    And I fill in "category_name" with "Animals"
    And I fill in "category_description" with "It includes articles about all animals, excluding humans."
    And I press "Save"
    Then I should see "Animals"
    
  Scenario: Successfully edit categories
    And I follow "Categories"
    And I follow "General"
    And I fill in "category_name" with "Students"
    And I fill in "category_keywords" with "aggies"
    And I fill in "category_description" with "It includes articlese about various student activities."
    And I press "Save"
    Then I should see "Students"