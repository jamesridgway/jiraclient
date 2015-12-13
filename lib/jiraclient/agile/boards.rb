require 'httparty'
module Jiraclient
  module Agile
    class Boards
      include HTTParty

      def initialize(base_uri, options)
        self.class.base_uri base_uri
        @global_options = options
      end

      def all(options = {})
        options.merge!(@global_options)
        self.class.get('/rest/agile/1.0/board/', options)
      end

      def get(boardId, options = {})
        options.merge!(@global_options)
        self.class.get("/rest/agile/1.0/board/'#{boardId}", options)
      end
    end
  end
end
