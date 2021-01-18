### Starting with only cucumber pry and rspec in gemfile.
- and stir to gem file and run bundler.
- create _features/support/env.rb_ and put configuration into.
- create _stir/clients_ and _stir/config folders_

## Inside of _features/config/echo.yml_

```
require 'stir/all'

Stir.configure do |config|
  config.path = '\Users\Charlie2\cucumber-demo - Copy\features\stir'
  config.environment = 'test' # must match desired value from yaml
  config.version = 'v1' # must match desired value from yaml
end
```

## Inside of _features/stir/config/echo.yml_
```
v1:
  test:
    base_uri: 'https://postman-echo.com'
    headers:
      Content-Type: 'application/json'
```

## Inside of _features/config/ehco.yml_
```
class Echo < Stir::RestClient
  get(:get_echo) { '/get?echo=%{echo}' }
end
```
