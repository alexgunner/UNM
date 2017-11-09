json.array!(@courses) do |course|
  json.extract! course, :id, :name, :decription, :course_type
  json.url course_url(course, format: :json)
end
