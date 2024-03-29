json.array!(@albums) do |album|
  json.extract! album, :id, :title, :description, :author_id
  json.url album_url(album, format: :json)
end
