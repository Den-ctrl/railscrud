json.extract! subscription, :id, :user_id, :app_id, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
