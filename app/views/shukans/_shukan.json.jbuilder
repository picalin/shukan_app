json.extract! shukan, :id, :title, :position, :user_id, :done, :created_at, :updated_at
json.url shukan_url(shukan, format: :json)
