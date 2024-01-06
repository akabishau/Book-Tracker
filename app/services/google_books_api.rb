class GoogleBooksAPI
  include HTTParty

  base_uri("https://www.googleapis.com/books/v1")

  def initialize
    @options = { query: { key: ENV["GOOGLE_BOOKS_API_KEY"] } }
  end

  def search_books(query)
    self.class.get("/volumes", @options.merge(query: { q: query }))
  end
end
