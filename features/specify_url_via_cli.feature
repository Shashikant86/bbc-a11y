Feature: Specify URL via the CLI

  Scenario: No config, just pass page URL on command-line
    Given a standards-compliant website running at http://localhost:54321
    When I run `a11y http://localhost:54321/perfect.html`
    Then it should pass with:
      """
      BBC Accesibility: http://localhost:54321/perfect.html
      -----------------------------------------------------
      """
