class HomeController < ApplicationController
  def index
  end

  def api_book
    require 'net/http'
    require 'json'

    name = params[:search]

    @url = "https://openlibrary.org/api/books?bibkeys=title:#{URI.encode(name)}"
    puts @url
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri).to_json

    @output = JSON.parse(@response)

  end

end
