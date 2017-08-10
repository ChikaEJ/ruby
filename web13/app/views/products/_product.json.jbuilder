json.extract! product, :id, :name, :price, :released_at, :published_at, :category_id, :rating, :active, :created_at, :updated_at
json.url product_url(product, format: :json)
