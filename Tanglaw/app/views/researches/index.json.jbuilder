json.array!(@researches) do |research|
  json.extract! research, :id, :author, :title, :significance, :future, :abstract
  json.url research_url(research, format: :json)
end
