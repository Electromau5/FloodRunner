json.array!(@logistics) do |logistic|
  json.extract! logistic, :id, :name
  json.url logistic_url(logistic, format: :json)
end
