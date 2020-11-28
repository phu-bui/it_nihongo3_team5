json.extract! manga, :id, :title, :number_of_pages, :price, :author, :pulisher, :created_at, :updated_at
json.url manga_url(manga, format: :json)
