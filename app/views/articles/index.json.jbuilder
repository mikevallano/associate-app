json.array!(@articles) do |article|
  json.extract! article, :id, :title, :content, :slug
  json.url article_url(article, format: :json)
end
