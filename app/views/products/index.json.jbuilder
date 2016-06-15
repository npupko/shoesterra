json.array!(@products) do |product|
  json.extract! product, :id, :brand, :price, :min_size, :max_size, :season, :sex, :top_matereal, :pad_matereal, :sole_matereal, :type
  json.url product_url(product, format: :json)
end
