json.array!(@comments) do |comment|
  json.extract! comment, :id, :my_thread_id
  json.url comment_url(comment, format: :json)
end
