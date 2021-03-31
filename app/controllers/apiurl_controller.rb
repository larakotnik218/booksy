require 'api_url'

class ApiUrlController < ApplicationController
  def create
    api = ApiUrl.new()
    url = api.api_response

    puts url
  end

  def index
    api = ApiUrl.new()
    url2 = api.api_response

    puts url2
  end
end
