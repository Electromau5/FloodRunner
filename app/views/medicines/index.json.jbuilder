json.array!(@medicines) do |medicine|
  json.extract! medicine, :id, :disease, :med, :note
  json.url medicine_url(medicine, format: :json)
end
