require 'rspec/retry'

RSpec.configure do |config|
  config.verbose_retry = true

  config.display_try_failure_messages = true

  config.around :each, :js do |ex|
    ex.run_with_retry retry: 3
  end
end


