require 'httparty'
require 'jiraclient/agile/boards'
module JiraClient
  module Agile
    class Agile
      include JiraClient::Agile
      def initialize(base_uri, options)
        @base_uri = base_uri
        @global_options = options
      end

      def boards
        Boards.new(@base_uri, @global_options)
      end
    end
  end
end
