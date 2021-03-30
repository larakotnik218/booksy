class ApiBook
  include HTTParty
  base_uri 'openlibrary.org/api/books?bibkeys=ISBN:9781408835029&jscmd=data'

  # def initialize(ISBN)
  #   @options = { query: {ISBN: ISBN } }
  # end
end

# apibook = ApiBook.new("9781408835029")
