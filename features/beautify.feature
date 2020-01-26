Feature: Beautify HTML

  Scenario: Preview HTML with html_beautify disabled
    Given a fixture app "basic-app"
    And a file named "config.rb" with:
      """
      """
    Given the Server is running at "basic-app"
    When I go to "/index.html"
    Then I should see:
      """
      <!doctype html>
      <html>
      <head>
      <title>Hello World</title>
      </head>
      <body>

      <h1>
      Multi
      Line
      </h1>
      <h2> Broken Up </h2>


      </body>
      </html>
      """

  Scenario: Preview HTML with html_beautify enabled
    Given a fixture app "basic-app"
    And a file named "config.rb" with:
      """
      activate :html_beautify
      """
    Given the Server is running at "basic-app"
    When I go to "/index.html"
    Then I should see:
      """
      <!doctype html>
      <html>
        <head>
          <title>Hello World</title>
        </head>
        <body>
          <h1>
            Multi
            Line
          </h1>
          <h2> Broken Up </h2>
        </body>
      </html>
    """

  Scenario: Preview HTML with html_beautify enabled and custom option
    Given a fixture app "basic-app"
    And a file named "config.rb" with:
      """
      activate :html_beautify do |option|
        option.keep_blank_lines = 1
        option.indent           = "\t"
        option.initial_level    = 1
      end
      """
    Given the Server is running at "basic-app"
    When I go to "/index.html"
    Then I should see:
      """
      <!doctype html>
      	<html>
      		<head>
      			<title>Hello World</title>
      		</head>
      		<body>

      			<h1>
      				Multi
      				Line
      			</h1>
      			<h2> Broken Up </h2>

      		</body>
      	</html>
      """
