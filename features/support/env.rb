require "capybara"
require "capybara/cucumber"
require "rspec"
require 'capybara/poltergeist'

Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
  options = {
      :js_errors => true,
      :timeout => 120,
      :debug => false,
      :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
      :inspector => true,
  }
  # IDEA complains about number of parameters, but
  # def initialize(app, options = {})
  # but warning is not in webpos project
  Capybara::Poltergeist::Driver.new(app, options)
end
