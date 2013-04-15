ENV["RAILS_ENV"] = "test"

require File.expand_path('../dummy/config/environment.rb',  __FILE__)

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(File.dirname(__FILE__), "/support/**/*.rb")].each {|f| require f}

require 'i18n-spec'
require 'rspec/rails'
require 'support/be_a_thorough_translation_of_matcher'

require 'spree/testing_support/factories'
require 'spree/testing_support/url_helpers'
require 'spree/testing_support/authorization_helpers'

RSpec.configure do |config|
  config.mock_with :rspec

  config.include FactoryGirl::Syntax::Methods
  config.include Spree::TestingSupport::UrlHelpers
  config.extend Spree::TestingSupport::AuthorizationHelpers::Request, type: :feature
end
