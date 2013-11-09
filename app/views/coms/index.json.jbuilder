json.array!(@coms) do |com|
  json.extract! com, :1, :3, :4
  json.url com_url(com, format: :json)
end
