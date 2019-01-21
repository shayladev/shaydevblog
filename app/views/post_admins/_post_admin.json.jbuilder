json.extract! post_admin, :id, :title, :subtitle, :topic, :content, :image_url, :created_at, :updated_at
json.url post_admin_url(post_admin, format: :json)
