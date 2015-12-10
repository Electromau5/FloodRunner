json.array!(@vaccines) do |vaccine|
  json.extract! vaccine, :id, :disease, :location, :contact, :info
  json.url vaccine_url(vaccine, format: :json)
end
