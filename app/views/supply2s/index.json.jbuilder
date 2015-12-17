json.array!(@supply2s) do |supply2|
  json.extract! supply2, :id, :material, :location, :contact, :info
  json.url supply2_url(supply2, format: :json)
end
