require 'httparty'
require 'omdbapi/version'
require 'omdbapi/client'

module OMDB

  class << self

    def client
      @client = Client.new unless @client
      @client
    end

    private

    def method_missing(name, *args, &block)
      client.send(name, *args, &block)
    end

  end
end
