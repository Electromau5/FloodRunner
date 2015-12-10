json.array!(@miscs) do |misc|
  json.extract! misc, :id, :subject, :details
  json.url misc_url(misc, format: :json)
end
