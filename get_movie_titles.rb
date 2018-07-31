require 'net/http'
require 'json'
# GET REQUEST OF ALL MOVIES WITH SUBSTR
def getMovieTitles(substr)
  result = fetch(substr)
  titles = []
  (0...result['total_pages']).each do |page|
    hash = fetch(substr, page_number: (page + 1))
    hash['data'].each do |movie|
      p movie
      p movie['Title']
      titles << movie['Title']
    end
  end
  titles.sort
end

def fetch(substr, page_number: 1)
  uri       = URI.parse("https://jsonmock.hackerrank.com/api/movies/search")
  params    = { Title: substr, page: page_number }
  uri.query = URI.encode_www_form(params)
  response  = Net::HTTP.get_response(uri)
  result    = JSON.parse(response.body)

end

substr = "spiderman"
p getMovieTitles(substr)
