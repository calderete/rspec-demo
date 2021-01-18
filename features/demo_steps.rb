require 'pry'

Given('There is string we wish to return') do
  @cukes = "Cukes are running wild"
  @expected_cukes = "Cukes are running wild"
end

Then('Cucumber will return the string') do
  echo = 'hello'
  @echo_client = Echo.new
  @echo_client.get_echo(echo: echo)
  expect(@echo_client.echo_response['echo'].eql?('hi')).to be(true), "Expected: #{echo}"
end
