json.array!(@solutions) do |solution|
  json.extract! solution, :id, :name
  json.url solution_url(solution, format: :json)
end
