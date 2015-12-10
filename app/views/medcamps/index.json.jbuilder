json.array!(@medcamps) do |medcamp|
  json.extract! medcamp, :id, :location, :organiser, :contact, :date, :info
  json.url medcamp_url(medcamp, format: :json)
end
