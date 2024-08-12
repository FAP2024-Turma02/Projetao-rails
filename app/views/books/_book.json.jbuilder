json.extract! book, :id, :title, :genre, :published_date, :summary, :created_at, :updated_at
json.url book_url(book, format: :json)
