class Echo < Stir::RestClient
  get(:get_echo) { '/get?echo=%{echo}' }

  response(:echo_response) { response['args'] }
end
