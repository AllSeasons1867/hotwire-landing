json.extract! greeting, :id, :body, :created_at, :updated_at
json.url greeting_url(greeting, format: :json)
