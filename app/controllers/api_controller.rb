class ApiController < ApplicationController
  def api_call
    require 'net/http'
    require 'json'

    @url = 'https://openlibrary.org/api/books?bibkeys=ISBN:9781408835029&jscmd=data'
    @uri = URI(@url)

    @response = Net::HTTP.get(@uri)

    @output = JSON.parse(@response)

  end
end
