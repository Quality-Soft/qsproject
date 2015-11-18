json.array!(@home_addresses) do |home_address|
  json.extract! home_address, :id
  json.url home_address_url(home_address, format: :json)
end
