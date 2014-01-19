json.array!(@trackdays) do |trackday|
  json.extract! trackday, :id, :track, :organization, :session_type, :price, :date
  json.url trackday_url(trackday, format: :json)
end
