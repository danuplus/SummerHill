json.array!(@posts) do |post|
  json.extract! post, :post_category_id, :user_id, :title, :desc
  json.url post_url(post, format: :json)
end
