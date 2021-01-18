require 'stir/all'

Stir.configure do |config|
  config.path = '\Users\Charlie2\cucumber-demo - Copy\features\stir'
  config.environment = 'test' # must match desired value from yaml
  config.version = 'v1' # must match desired value from yaml
end
