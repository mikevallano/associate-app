json.array!(@pigs) do |pig|
  json.extract! pig, :id, :name
  json.url pig_url(pig, format: :json)
end
