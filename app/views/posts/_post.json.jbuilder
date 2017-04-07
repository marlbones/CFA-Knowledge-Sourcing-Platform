json.extract! post, :id, :user_id, :topic_id, :title, :important, :use, :content, :web, :created_at, :updated_at
json.url post_url(post, format: :json)
