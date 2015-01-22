json.array!(@courses) do |course|
  json.extract! course, :id, :name, :year, :code, :credits, :period
  json.url course_url(course, format: :json)
end
