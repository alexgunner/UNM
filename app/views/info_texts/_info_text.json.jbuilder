json.extract! info_text, :id, :title, :content, :created_at, :updated_at
json.url info_text_url(info_text, format: :json)
