require 'uri'
require 'net/http'
require 'openssl'
require 'json'

# The module must be called ElevatorMedia and the class that implements your code must be called Streamer.
module ElevatorMedia
  class Streamer
    #   The Streamer class must contain a standard method getContent that returns html ( a string that contains valid html ready to be displayed on a web page ex: "<div>Interesting content</div>" )
    # https://rapidapi.com/apidojo/api/yahoo-finance1/
    def getContent()
      symbol = tickers()
      # symbol = ["TSLA", "AAPL", "GME"].sample
      # symbol = ["TSLA", "AAPL", "GME", "AMC", "SPCE", "BBBY", "COIN", "NOK"].sample
      # interval = "60m" #1m|2m|5m|15m|60m|1d
      # range = "3mo" #1d|5d|1mo|3mo|6mo|1y|2y|5y|10y|ytd|max

      # url = URI("https://apidojo-yahoo-finance-v1.p.rapidapi.com/stock/v2/get-chart?interval=#{interval}&symbol=#{symbol}&range=#{range}&region=US")

      url = URI("https://apidojo-yahoo-finance-v1.p.rapidapi.com/stock/v2/get-summary?symbol=#{symbol}&region=US")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Get.new(url)
      request["x-rapidapi-key"] = 'edbca9e610msh7ea3a64ab4ca4d9p1f4bafjsn2d0fa15d126f'
      # request["x-rapidapi-key"] = ENV['RAPIDAPI']
      # request["x-rapidapi-key"] = ENV.fetch('RAPIDAPI')
      request["x-rapidapi-host"] = 'apidojo-yahoo-finance-v1.p.rapidapi.com'

      response = http.request(request)
      stock = JSON.parse(response.read_body)
      # puts stock

      return "<div>Stock ticker of the day: #{symbol} @ $#{stock['price']['regularMarketPrice']['fmt']} | Sector: #{stock['summaryProfile']['sector']}</div>"
    end

    def tickers()
      symbol = ["TSLA", "AAPL", "GME"].sample
    end

    def random
      "A" * rand(1..10)
    end

    # attr_accessor :make, :year, :color
    # attr_reader :wheels
    # attr_writer :doors
    #
    # def initialize(options = {})
    #   self.make = options[:make] || 'Ferrari'
    #   self.year = (options[:year] || 2022).to_i
    #   self.color = options[:color] || 'red'
    #   @wheels = 4
    # end
    #
    # def self.colors
    #   ['blue', 'black', 'yellow', 'green']
    # end
    #
    # def full_name
    #   "#{self.year.to_s} #{self.make} (#{self.color})"
    # end
    #
    #
    #    # #https://www.linkedin.com/learning/ruby-testing-with-rspec/target-code-and-the-spec-file

  end
end

#   The html returned by getContent must come from the source of your choice on the web (api, websites, etc...). The marketing department expects creativity and originality from you!
#   All the content you make available must be accessible via the getContent method (only one entry point for the streamer).
#     Try to keep your methods short, maximum 10 lines of code.

# rapidapi tutorial example
# class TravelController < ApplicationController
#   def index
#   end
#
#   def search
#     countries = find_country(params[:country])
#
#     unless countries
#       flash[:alert] = 'Country not found'
#       return render action: :index
#     end
#
#     @country = countries.first
#     @weather = find_weather(@country['capital'], @country['alpha2Code'])
#   end
#
#   private
#   def request_api(url)
#     response = Excon.get(
#       url,
#       headers: {
#         'X-RapidAPI-Host' => URI.parse(url).host,
#         'X-RapidAPI-Key' => ENV.fetch('RAPIDAPI_API_KEY')
#       }
#     )
#     return nil if response.status != 200
#     JSON.parse(response.body)
#   end
#
#   def find_country(name)
#     request_api(
#       "https://restcountries-v1.p.rapidapi.com/name/#{URI.encode(name)}"
#     )
#   end
#
#   def find_weather(city, country_code)
#     query = URI.encode("#{city},#{country_code}")
#
#     request_api(
#       "https://community-open-weather-map.p.rapidapi.com/forecast?q=#{query}"
#     )
#   end
#
# end