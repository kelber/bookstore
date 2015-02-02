json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :description, :price, :avaliable, :user_id
  json.url book_url(book, format: :json)
end
