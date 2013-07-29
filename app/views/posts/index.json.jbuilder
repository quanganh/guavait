json.array!(@posts) do |post|
  json.extract! post, :title, :category, :content, :active
  json.url post_url(post, format: :json)
end
