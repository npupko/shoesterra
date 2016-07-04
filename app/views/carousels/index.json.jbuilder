json.array!(@carousels) do |carousel|
  json.extract! carousel, :id, :name, :link
  json.url carousel_url(carousel, format: :json)
end
