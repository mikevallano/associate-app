json.array!(@blags) do |blag|
  json.extract! blag, :id, :name
  json.url blag_url(blag, format: :json)
end
