json.extract! order, :id, :order_date, :total_price, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
