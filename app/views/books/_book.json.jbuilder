json.extract! book, :id, :title, :description, :ISBN, :year, :created_at, :updated_at
json.url book_url(book, format: :json)
