module ClientRepresenter
  include Representable::JSON
  
  nested :client_get_response do
    nested :client_get_result do
      property :email
      property :name
    end
  end
end
