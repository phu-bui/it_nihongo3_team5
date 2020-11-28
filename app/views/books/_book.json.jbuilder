json.extract! book, :id, :title, :number_of_pages, :price, :author, :pulisher, :created_at, :updated_at
json.url book_url(book, format: :json)
