require "chefspec"
require "chefspec/berkshelf"

RSpec.configure do |config|
  config.log_level = :info
  config.platform = 'ubuntu'
  config.version = '14.04'
end
