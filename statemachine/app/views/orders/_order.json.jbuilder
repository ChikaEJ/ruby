json.extract! order, :id, :name, :desc, :status, :cancel_reason, :created_at, :updated_at
json.url order_url(order, format: :json)
