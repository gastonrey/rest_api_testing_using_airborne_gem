require 'airborne'
require 'yaml'

Dir["./shared_context/**/*.rb"].each { |f| require f }

Airborne.configure do |config|
  config.base_url = 'http://www.purgomalum.com/service/json?text='
end

ExpectationNotMetError = RSpec::Expectations::ExpectationNotMetError
ExpectationError       = Airborne::ExpectationError
InvalidJsonError       = Airborne::InvalidJsonError
PathError              = Airborne::PathError