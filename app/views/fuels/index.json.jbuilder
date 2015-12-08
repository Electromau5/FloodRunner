json.array!(@fuels) do |fuel|
  json.extract! fuel, :id, :location, :time, :supply, :date
  json.url fuel_url(fuel, format: :json)
end
