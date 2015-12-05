json.array!(@people) do |person|
  json.extract! person, :id, :name, :description, :location
  json.url person_url(person, format: :json)
end
