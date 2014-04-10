response = soap.request(:client_get, message)
  
client = Client.new
client.extend(Representers::ClientRepresenter)
client.from_hash(response.body.try(:with_indifferent_access))
  
