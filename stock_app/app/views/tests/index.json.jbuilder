json.array!(@tests) do |test|
  json.extract! test, :id, :name, :memo, :memo2
  json.url test_url(test, format: :json)
end
