json.array!(@supplies) do |supply|
  json.extract! supply, :id, :requirement, :location, :contact, :info
  json.url supply_url(supply, format: :json)
end
