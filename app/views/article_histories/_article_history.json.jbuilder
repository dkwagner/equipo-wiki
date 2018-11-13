json.extract! article_history, :id, :article_id, :title, :body, :created_at, :updated_at
json.url article_history_url(article_history, format: :json)
