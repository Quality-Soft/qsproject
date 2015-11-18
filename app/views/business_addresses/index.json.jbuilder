json.array!(@business_addresses) do |business_address|
  json.extract! business_address, :id
  json.url business_address_url(business_address, format: :json)
end
