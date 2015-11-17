Derived from https://github.com/jonathanchrisp/selenium-cucumber-ruby-kickstarter

Simple Cucumber Framework

##Background

A basic integration test framework for serviceframe.

### Getting Started
      1. Ensure you have the firefox or chrome browser installed - install chromedriver if using chrome
      2. We should be able to get selenium working with phantomjs for headless testing - this requires more work
      3. Ensure you have ruby installed (built and run with 2.0.0 or higher) - use rvm
      4. Ensure you have rubygems and the bundler installed
      5. Navigate to the cloned project in your terminal
      6. Run 'bundle install'
      7. Run 'cucumber'

Please note that this will run the feature in the firefox browser as default. To run this test in chrome just pass the argument
`-p chrome`  e.g. `cucumber -p chrome`
