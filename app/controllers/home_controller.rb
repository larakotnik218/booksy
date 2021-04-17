class HomeController < ApplicationController
  def index
  end

  def api_book
    require 'net/http'
    require 'json'

    name = params[:search]

    @url = "https://www.googleapis.com/books/v1/volumes?q=#{URI.encode(name)}"
    puts @url
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)

    @output = JSON.parse(@response)

  end

end
