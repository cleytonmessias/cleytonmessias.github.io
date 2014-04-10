def request(method, message)
  client = Savon::Client.new(basic_auth: auth, wsdl: wsdl)
  response = client.call(method, message: message)
end

private

def auth 
  [options[:ws_user], options[:ws_password] ]
end

def wsdl
  options[:wsdl_endpoint]
end

...
