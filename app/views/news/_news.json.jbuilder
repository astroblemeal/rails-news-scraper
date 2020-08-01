json.extract! news, :id, :headline, :url, :created_at, :updated_at
json.url news_url(news, format: :json)
