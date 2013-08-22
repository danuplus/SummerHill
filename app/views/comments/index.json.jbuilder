json.array!(@comments) do |comment|
  json.extract! comment, :user_id, :post_id, :desc
  json.url comment_url(comment, format: :json)
end
