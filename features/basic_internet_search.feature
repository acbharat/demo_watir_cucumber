
Feature: Basic Internet Search
  As a casual internet user
  I want to learn about watir, and do a quick updates
  So that I can be knowledgeable being

  @watir
  Scenario: On google Search for Watir
    Given I am on the Google Home Page
    When I search for "Watir"
    Then I should see at least 100,000 results

  @watir
  Scenario: On bing Search for Watir
    Given I am on the Bing Home Page
    When I search for "Watir"
    Then I should see at least 30,000 results

  @watir
  Scenario Outline: Search for Watir
    Given I am on the <search engine> Home Page
    When I search for "Watir"
    Then I should see at least <expected number of> results
    Scenarios:
      | search engine | expected number of  |
      | Google        | 100,000             |
      | Bing          |  30,000             |

  @watir
  Scenario Outline: Do a unit conversion
    Given I am on the <search engine> Home Page
    When I convert 10 cm to inches
    Then I should see the conversion result "<as expected>"
    Scenarios:
      | search engine | as expected                      |
      | Google        | 10 Centimeter = 3.93701 Inch     |
      | Bing          | 10 Centimetre = 3.93700787 Inch  |

  @watir
  Scenario Outline: Do a search using data specified externally
    Given I am on the <search engine> Home Page
    When I search for a ridiculously small number of results
    Then I should see at most 200 results
    Scenarios:
      | search engine |
      | Google        |
      | Bing          |
