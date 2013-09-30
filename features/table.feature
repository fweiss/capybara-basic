Feature: Tabular compare

  Scenario: The tabular data matches

    Given table loaded
    Then should see these cukes:
      | Latin           | English      |
      | Cucumis sativus | Cucumber     |
      | Cucumis anguria | Burr Gherkin |
