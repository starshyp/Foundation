require 'elevator_media'
require 'spec_helper'
require 'uri'
require 'net/http'
require 'openssl'
require 'rails_helper'

describe ElevatorMedia::Streamer do
  describe ".getContent" do
    context "get random stock with price" do
      it 'should return a response' do
        # Arrange
        response = ElevatorMedia::Streamer.new
        # Act
        # Assert
        expect(response).not_to be(nil)
        # expect(ElevatorMedia::Streamer.new.getContent).to have_http_status(:ok)
        pp ElevatorMedia::Streamer.new.getContent
      end
      it 'should return response as a string' do
        # Arrange
        response = ElevatorMedia::Streamer.new.getContent
        # Act
        # Assert
        expect(response).to be_a String
        # expect(ElevatorMedia::Streamer.new).to receive(:getContent).and_return
        # pp ElevatorMedia::Streamer.new.getContent
      end
      it 'should return overall msg in html' do
        # Arrange
        response = ElevatorMedia::Streamer.new.getContent
        # Act
        # Assert
        expect(response).to include('<div>')
        expect(response).to include('</div>')
        # pp ElevatorMedia::Streamer.new.getContent
      end
      # it 'should return valid price range' do
      #   # Arrange
      #   # Act
      #   # Assert
      #   expect(ElevatorMedia::Streamer.new.getContent).to be >0.01
      #   expect(ElevatorMedia::Streamer.new.getContent).to be <1000000
      #   # pp ElevatorMedia::Streamer.new.getContent
      # end
      # it 'selects from an array of stock tickers' do
      # symbol = ["TSLA", "AAPL", "GME", "AMC", "SPCE", "BBBY", "COIN", "NOK"]
      # expect(ElevatorMedia::Streamer.new.getContent.symbol.to match_array(symbol))
      # end

      # it 'should return stock price of TSLA' do
      #   uri = URI("https://apidojo-yahoo-finance-v1.p.rapidapi.com/stock/v2/get-summary?symbol=TSLA&region=US")
      #   responseJSON = JSON.load(Net::HTTP.get(uri))
      #   response = eval(responseJSON)
      #   # streamer = ElevatorMedia::Streamer.getContent['price']['regularMarketPrice']['fmt']
      #   expect(response.first['price']['regularMarketPrice']['fmt']).to_not eq(nil)
      #   pp response.first['price']['regularMarketPrice']['fmt']
      # end
      #
      # it 'should return stock price' do
      #   responseJSON = JSON.parse(ElevatorMedia::Streamer.new.getContent).first
      #   response = eval(responseJSON)
      #   expect(response['price']['regularMarketPrice']['fmt']).to_not eq(nil)
      # end

    end
  end

  describe ".tickers" do
    context "don't get every item in the array" do
      # it 'should return a random sample from an array' do
        s =  ["TSLA", "AAPL", "GME"]
        # expect(ElevatorMedia::Streamer.new.tickers).to eq(s)
        # it { should include(*s) }
      it { is_expected.to_not contain_exactly(s) }
      # end
    end
  end

      # it 'should return TSLA stock price' do
      #   streamer = ElevatorMedia::Streamer.getContent['price']['regularMarketPrice']['fmt']
      #   expect(streamer).to_not eq(nil)
      # end

  # it "generates a random number" do
  #   generator = ElevatorMedia::Streamer.new
  #   allow(generator).to receive(:rand).and_return(5)
  #   expect(generator.random).to eq("AAAAA")
  #   pp generator.random
  # end

end

# describe StringCalculator do
#   describe ".add" do
#     context "test for an empty string" do
#       it 'returns zero' do
#         expect(StringCalculator.add('')).to eq(0)
#       end
#     end
#     context "test for a string" do
#       it 'returns 4' do
#         expect(StringCalculator.add('2345')).to eq(4)
#       end
#     end
#     context "test for a string with stripped cars" do
#       it 'returns 3' do
#         expect(StringCalculator.add('2A45')).to eq(3)
#       end
#     end
#   end
# end