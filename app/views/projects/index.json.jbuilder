json.array!(@projects) do |project|
  json.extract! project, :id, :title, :subtitle, :original_url, :translation_url, :description, :contributor, :contributor_url
  json.url project_url(project, format: :json)
end
