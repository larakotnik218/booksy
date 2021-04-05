class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = 'https://openlibrary.org/api/books?bibkeys=title:The%20Adventures%20of%20Tom%20Sawyer'
    @uri = URI(@url)

    @response = Net::HTTP.get(@uri).to_json

    @output = JSON.parse(@response)

  end
end
