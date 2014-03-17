json.array!(@shoes) do |shoe|
  json.extract! shoe, :id, :name, :designer, :description, :color, :picture
  json.url shoe_url(shoe, format: :json)
end
