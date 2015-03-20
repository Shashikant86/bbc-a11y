Feature: Specify content language
  
  The main language of the page _must_ be specified.
  
  Changes to language within the page **must** be indicated.
  
  Rationale
  =========
  
  Assistive technologies such as screen readers have support for different languages,
  allowing for appropriate pronunciation.
  
  Techniques
  ==========

  Pass:

  ```
  <!DOCTYPE html>
  <html lang="en-GB">
  <head>
    <title>Language techniques</title>
  </head>
  <body>
    <h1>Techniques for language in HTML</h1>
    <p><span lang="es">Cinco de Mayo</span> is Spanish for "fifth of May"</p>
  </body>
  </html>
  ```

  Fail:

  ```
  <!DOCTYPE html>
  <html>
  <head>
    <title>Language techniques</title>
  </head>
  <body>
    <h1>Techniques for language in HTML</h1>
    <p>Cinco de Mayo is Spanish for "fifth of May"</p>
  </body>
  </html>
  ```

  Scenario: Check main body element lang attribute
    When I visit the page
    Then the <html> element must have a `lang` attribute
    And the main natural language of the page must match that attribute

  Scenario: Check for other elements with lang attributes
    When I visit the page
    Then all elements with `lang` attribute must have content in that natural language

  @manual
  Scenario: Check for areas of the page expressed in other languages, but missing a `lang` attribute
    When I visit the page
    Then any parts expressed in a natural language different to the main language of the page must have a matching `lang` attribute
