json.array!(@chloes) do |chlo|
  json.extract! chlo, :id, :name
  json.url chlo_url(chlo, format: :json)
end
