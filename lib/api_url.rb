require 'httparty'

class APiUrl
  url = "https://openlibrary.org/api/books?bibkeys=ISBN:9781408835029&jscmd=data"

  def api_response
      response = HTTParty.get(url)

      json = JSON.parse(response.body)
      json['url']
  end
end
