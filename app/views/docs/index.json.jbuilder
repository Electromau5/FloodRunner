json.array!(@docs) do |doc|
  json.extract! doc, :id, :name, :location, :contact
  json.url doc_url(doc, format: :json)
end
